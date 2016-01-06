# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rck_ppr_scssrs/version'

Gem::Specification.new do |spec|
  spec.name          = "rck_ppr_scssrs"
  spec.version       = RckPprScssrs::VERSION
  spec.authors       = ["Julia Herron"]
  spec.email         = ["julia.herron@gmail.com"]

  if spec.respond_to?(:metadata)
     spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.summary       = %q{Simple command line game for rock paper scissors.}
  spec.description   = %q{}
  spec.homepage      = "https://rubygems.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
