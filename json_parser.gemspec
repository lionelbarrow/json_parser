# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "json_parser"
  spec.version       = JsonParser::VERSION
  spec.authors       = ["lionelbarrow"]
  spec.email         = ["lionelbarrow@gmail.com "]
  spec.description   = "Toy JSON parser written for a talk."
  spec.summary       = "Toy JSON parser"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "rake"
end
