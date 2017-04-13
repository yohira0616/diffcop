# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diffcop/version'

Gem::Specification.new do |spec|
  spec.name          = 'diffcop'
  spec.version       = Diffcop::VERSION
  spec.authors       = ['yohira0616']
  spec.email         = ['yukito.sys.so@gmail.com']

  spec.summary       = 'apply rubocop for git diff'
  spec.description   = 'apply rubocop for git diff'
  spec.homepage      = 'https://github.com/yohira0616/diffcop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'rubocop'
end
