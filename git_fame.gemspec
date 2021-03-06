# -*- encoding: utf-8 -*-
require File.expand_path('../lib/git_fame/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Linus Oleander"]
  gem.email         = ["linus@oleander.nu"]
  gem.description   = %q{Generates awesome stats from git-blame}
  gem.summary       = %q{
Generates awesome stats from git-blame

A Ruby wrapper for git-blame.
Generates data like:
- Number of files changed by a user
- Number of commits by user
- Lines of code by a user
  }

  gem.homepage      = "https://github.com/oleander/git-fame-rb"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "git_fame"
  gem.require_paths = ["lib"]
  gem.version       = GitFame::VERSION

  gem.add_dependency("ruby-progressbar", "~> 1.7.5")
  gem.add_dependency("trollop", "~> 2.1.2")
  gem.add_dependency("hirb", "~> 0.7.3")
  gem.add_dependency("scrub_rb", "~> 1.0.1")
  gem.add_dependency("memoist", "~> 0.14.0")
  gem.add_dependency("method_profiler", "~> 2.0.1")

  gem.add_development_dependency("rspec", "~> 3.4.0")
  gem.add_development_dependency("rspec-collection_matchers", "~> 1.1.2")
  gem.add_development_dependency("rake", "~> 10.4.2")
  gem.add_development_dependency("coveralls", "~> 0.8.1")

  gem.required_ruby_version = ">= 1.9.2"
end
