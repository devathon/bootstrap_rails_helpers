# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap_rails_helpers/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap_rails_helpers"
  s.version     = BootstrapRailsHelpers::VERSION
  s.authors     = ["Sunil Mohan Ranta"]
  s.email       = ["smr@crypsis.net"]
  s.homepage    = "http://github.com/crypsis/bootstrap_rails_helpers"
  s.summary     = %q{Bootstrap helpers for rails}
  s.description = %q{Bootstrap helpers for rails}

  s.rubyforge_project = "bootstrap_rails_helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
  #s.add_runtime_dependency 'bootstrap_for_formtastic'

end

