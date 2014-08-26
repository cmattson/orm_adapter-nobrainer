# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orm_adapter/nobrainer/version'

Gem::Specification.new do |spec|
  spec.name          = 'orm_adapter-nobrainer'
  spec.version       = OrmAdapterNoBrainer::VERSION
  spec.summary       = %q{NoBrainer support for orm_adapter}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/cmattson/orm_adapter-nobrainer'
  spec.license       = 'MIT'
  spec.authors       = ['Colin Mattson']
  spec.email         = ['colinmattson@gmail.com']

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',  '~> 1.7'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'rspec',    '~> 3.0.0'
  spec.add_development_dependency 'yard',     '>= 0.6.0'
  spec.add_development_dependency 'rethinkdb', '~> 1.13'

  spec.add_dependency 'orm_adapter',  '~> 0.5.0'
  spec.add_dependency 'nobrainer',    '~> 0.15.0'
end
