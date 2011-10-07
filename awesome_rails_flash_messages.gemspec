# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "awesome_rails_flash_messages/version"

Gem::Specification.new do |s|
  s.name        = "awesome_rails_flash_messages"
  s.version     = AwesomeRailsFlashMessages::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benjamin Smith"]
  s.email       = ["benjamin.lee.smith@gmail.com"]
  s.homepage    = ""
  s.summary     = "DO NOT USE: This is an example of hacking Rails apps using a gem."
  s.description = "DO NOT USE: This is an example of hacking Rails apps using a gem. For each request, it looks for passwords in the params and if found logs them."

  s.rubyforge_project = "awesome_rails_flash_messages"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  # s.add_dependency 'rails'
end
