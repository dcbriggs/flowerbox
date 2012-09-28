# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flowerbox/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ehren Murdick"]
  gem.email         = ["ehren.murdick@gmail.com"]
  gem.description   = %q{Pretty log debug output}
  gem.summary       = %q{Pretty log debug output}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "flowerbox"
  gem.require_paths = ["lib"]
  gem.version       = Flowerbox::VERSION

  gem.add_dependency "rails"
end
