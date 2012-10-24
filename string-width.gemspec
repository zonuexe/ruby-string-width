# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string-width/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["USAMI Kenta"]
  gem.email         = ["tadsan@zonu.me"]
  gem.description   = "measure the width of String"
  gem.summary       = "measure the width of String"
  gem.homepage      = "https://github.com/zonuexe/ruby-string-width"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "string-width"
  gem.require_paths = ["lib"]
  gem.version       = StringWidth::VERSION

  gem.add_dependency 'string-width-tanasinn', '~>0.0.1'
end
