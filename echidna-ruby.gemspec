# -*- encoding: utf-8 -*-
require File.expand_path("../lib/echidna/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "echidna-ruby"
  s.version     = Echidna::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Richard Huang"]
  s.email       = ["flyerhzm@gmail.com"]
  s.homepage    = ""
  s.summary     = "common ruby code for echidna projects."
  s.description = "common ruby code for echidna projects."

  s.required_ruby_version = ">= 1.9.0"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("hiredis")
  s.add_dependency("redis")
  s.add_dependency("redis-namespace")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "assets"]
end
