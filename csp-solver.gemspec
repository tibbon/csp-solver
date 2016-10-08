# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csp/solver/version'

Gem::Specification.new do |spec|
  spec.name          = 'csp-solver'
  spec.version       = CSP::Solver::VERSION
  spec.authors       = ['Matthew Barry', 'Alex Moore-Niemi']

  spec.summary       = 'Solve constraint satisfaction problems with ease.'
  spec.description   = 'A ruby library for solving arbitrary constraint satisfaction problems. If the constraints can be specified in the ruby programming language, then this library can find a solution.'
  spec.homepage      = 'https://github.com/komputerwiz/csp-solver'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
end
