# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature/server/version'

Gem::Specification.new do |s|
  s.name          = "feature-server"
  s.version       = Feature::Server::VERSION
  s.authors       = ["Will Bryant"]
  s.email         = ["william@tout.com"]

  s.summary       = %q{Redis-based Feature Toggles for Rails}
  s.description   = %q{This gem adds redis-based feature toggles that can be toggled on and off in a variety of ways}
  s.homepage      = "https://github.com/Tout/feature-rails"

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")
  s.files            += Dir.glob("spec/**/*")

  s.files         += `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|s|features)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "feature"
  s.add_development_dependency "rs"
end
