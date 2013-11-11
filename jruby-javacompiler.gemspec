# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'javacompiler/version'

Gem::Specification.new do |spec|
  spec.platform    = 'java'
  spec.name          = "jruby-javacompiler"
  spec.version       = Jruby::Javacompiler::VERSION
  spec.authors       = ["Federico Tomassetti"]
  spec.email         = ["f.tomassetti@gmail.com"]
  spec.description   = %q{Compile Java programmatically from JRuby}
  spec.summary       = %q{The goal of this project is to permit to compile Java programmatically from JRuby and use the compiled classes.}
  spec.homepage      = "https://github.com/ftomassetti/jruby-javacompiler"
  spec.license       = "Apache License V2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "1.3.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
end
