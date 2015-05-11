class Admin::RolesController < Admin::BaseController
  
  #
  # Settings
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #
  
  #
  # Concerns
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  #
  # Filter
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  #
  # Plugins
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #
  
  #
  # Actions
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #
  
  def create
    super do |success, failure|
      success.html { redirect_to [:edit, current_namespace, resource] }
    end
  end
  
  def update
    resource.previous_permissions = resource.permissions
    super do |success, failure|
      success.html { redirect_to edit_polymorphic_path([current_namespace, resource]) }
    end
  end
  
  def sync_and_permit
    Permission.sync_and_permit_admins!
    redirect_to [current_namespace, resource_class], notice: t('.success')
  end
  
  def sync
    Permission.sync
    redirect_to [current_namespace, resource_class], notice: t('.success')
  end
  
  #
  # Protected
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  protected

  #
  # Private
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  private
  
  def permitted_params
    params.permit(resource_instance_name => [:name, permission_ids: []])
  end

end
