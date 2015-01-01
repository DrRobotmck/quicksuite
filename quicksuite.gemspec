# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quicksuite/version'

Gem::Specification.new do |spec|
  spec.name          = "quicksuite"
  spec.version       = Quicksuite::VERSION
  spec.authors       = ["DrRobotmck"]
  spec.email         = ["mckenneth.scott@icloud.com"]
  spec.summary       = %q{Gems for testing}
  spec.description   = %q{Includes commonly used gem's for testing in Rails}
  spec.homepage      = "http://www.github.com/DrRobotmck/quicksuite"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rspec-rails", "~> 3.1.0"
  spec.add_runtime_dependency "pry-rails", "~> 0.3.2"
  spec.add_runtime_dependency "factory_girl_rails", "~> 4.4.1"
  spec.add_runtime_dependency "ffaker", "~> 1.25.0"
  spec.add_runtime_dependency "capybara", "~> 2.4.3"
  spec.add_runtime_dependency "selenium-webdriver", "~> 2.43.0"
  spec.add_runtime_dependency "launchy", "~> 2.4.2"
  spec.add_runtime_dependency "shoulda-matchers", "~> 2.7.0"
  spec.add_runtime_dependency "simplecov", "~> 0.9.1"
end
