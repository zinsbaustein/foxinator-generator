class Admin::<%= class_name.pluralize %>Controller < Admin::BaseController

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

  include Eventify

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
    params.permit(resource_instance_name => [])
  end
end