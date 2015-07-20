# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'less/rails/jasny/bootstrap/version'

Gem::Specification.new do |spec|
  spec.name          = 'less-rails-jasny-bootstrap'
  spec.version       = "#{Less::Rails::Jasny::Bootstrap::VERSION}"
  spec.authors       = ['Erich Quintero']
  spec.email         = ['qbantek@gmail.com']

  spec.summary       = %q{ Jasny Bootstrap less and javascript files for rails applications.}
  spec.description   = %q{ Jasny Bootstrap less and javascript files for rails applications.}
  spec.homepage      = "https://github.com/qbantek/less-rails-jasny-bootstrap"
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency     'less-rails', ['>= 2.6', '<= 2.8']
  spec.add_development_dependency 'rails',  ['>= 3.1', '<= 4.2']
  spec.add_development_dependency 'pry', '~> 0.10.1'
  spec.add_development_dependency 'json', '~> 1.8'
end
