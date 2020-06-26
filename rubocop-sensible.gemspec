# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/sensible/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-sensible'
  spec.version       = Rubocop::Sensible::VERSION
  spec.authors       = ['OKURA Masafumi']
  spec.email         = ['masafumi.o1988@gmail.com']

  spec.summary       = 'Sensible configuration for RuboCop'
  spec.description   = 'Sensible configuration for RuboCop'
  spec.homepage      = 'https://github.com/okuramasafumi/rubocop-sensible'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 0.60.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
