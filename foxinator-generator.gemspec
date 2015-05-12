Gem::Specification.new do |s|
  s.name        = "foxinator-generator"
  s.version     = "0.0.10"
  s.author      = "HitFox"
  s.email       = "peter@hitfoxgroup.com"
  s.homepage    = "https://github.com/HitFox/foxinator-generator"
  s.summary     = "Get your HitFox apps up and running quickly and easy!"
  s.description = "Installs an admin system, our customized CMS, and other goodies"

  s.files        = Dir["{lib,test}/**/*", "[A-Z]*"]
  s.require_path = "lib"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
  s.license      = "Copyright HitFox Group"

  s.add_dependency("state_machine", "~>1.2.0")
  s.add_dependency("inherited_resources", "~>1.6.0")
  s.add_dependency("rails_config", "~>0.4.2")
  s.add_dependency "devise", "~>3.4.1"
  s.add_dependency("kaminari", "~>0.16.3")
end