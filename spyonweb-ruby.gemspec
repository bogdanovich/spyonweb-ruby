# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spyonweb/version'

Gem::Specification.new do |spec|
  spec.name          = "spyonweb-ruby"
  spec.version       = Spyonweb::VERSION
  spec.authors       = ["Anton Bogdanovich"]
  spec.email         = ["27bogdanovich@gmail.com"]
  spec.summary       = %q{TODO: Spyonweb.com Ruby bindings}
  spec.description   = %q{TODO: Spyonweb.com API Ruby bindings}
  spec.homepage      = "https://github.com/bogdanovich/spyonweb-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end
