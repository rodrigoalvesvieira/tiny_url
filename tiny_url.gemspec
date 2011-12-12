# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tiny_url/version"

Gem::Specification.new do |s|
  s.name        = "tiny_url"
  s.version     = TinyUrl::VERSION
  s.authors     = ["Rodrigo Vieira"]
  s.email       = ["rodrigovieira1994@gmail.com"]
  s.homepage    = "http://rodrigoalvesvieira.com/tiny_url"
  s.summary     = %q{A gem for tinifying urls}
  s.description = %q{A gem for tinifying urls}

  s.rubyforge_project = "tiny_url"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ["tiny_url"]
  s.require_paths = ["lib"]
end
