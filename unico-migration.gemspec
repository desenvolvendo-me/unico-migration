# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "unico-migration/version"

Gem::Specification.new do |spec|
  spec.name          = "unico-migration"
  spec.version       = Unico::Migration::VERSION
  spec.authors       = ["Nobe Sistemas"]
  spec.email         = ["diretoria@nobe.com.br"]
  spec.description   = %q{Common resources for unico people}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/ISSIntel/unico-migration"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_dependency 'actionpack'
  spec.add_dependency 'activerecord'
  spec.add_dependency 'activesupport'
  spec.add_dependency "enumerate_it"
end
