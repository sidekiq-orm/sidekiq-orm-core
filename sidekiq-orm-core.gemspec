# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/orm/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'sidekiq-orm-core'
  spec.version       = Sidekiq::Orm::Core::VERSION
  spec.authors       = ['Adam Farhi']
  spec.email         = ['afarhi@ebay.com']
  spec.summary       = 'Sidekiq-ORM core gem - used by other child-gems'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/sidekiq-orm/sidekiq-orm-core'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec', '3.0.0.rc1'
end
