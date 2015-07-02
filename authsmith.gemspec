# encoding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "authsmith/version"

Gem::Specification.new do |gem|
  gem.name = "authsmith"
  gem.version = Authsmith::VERSION
  gem.authors = ["medcat"]
  gem.email = ["me@medcat.me"]
  gem.summary = ""
  gem.description = ""
  gem.homepage = "https://github.com/medcat/authsmith"
  gem.license = "MIT"

  gem.files = `git ls-files -z`.split("\x0")
  gem.executables = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{spec/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.6"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 3.1"
end
