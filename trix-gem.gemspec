lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trix/version"

Gem::Specification.new do |spec|
  spec.name = "trix-gem"
  spec.version = Trix::VERSION
  spec.authors = ["DRBragg"]
  spec.email = ["DRBragg@gmail.com"]

  spec.summary = "A rich text editor for everyday writing"
  spec.description = "A rich text editor for everyday writing"
  spec.homepage = "https://github.com/DRBragg/trix-gem"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", "> 7.0"

  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "formtastic", "~> 5.0"
  spec.add_development_dependency "simple_form", "~> 5.3.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rspec-activemodel-mocks"
  spec.add_development_dependency "rubocop", "0.35.1"
end
