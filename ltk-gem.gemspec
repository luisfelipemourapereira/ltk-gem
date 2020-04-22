# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ltk/gem/version'

Gem::Specification.new do |spec|
  spec.name                  = 'ltk-gem'
  spec.version               = Ltk::Gem::VERSION
  spec.authors               = [%()]
  spec.email                 = [%( luis AT pleme DOT com)]
  spec.description           = %(Ltk-Gem)
  spec.summary               = %(Ltk-Gem)
  spec.homepage              = 'https://github.com/luisfelipemourapereira/ltk-gem'
  spec.license               = 'FFA'
  spec.files                 = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  spec.executables           = spec.files.grep(%r{^bin/}).map do |f|
    File.basename(f)
  end
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.6.4'
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rubocop')
end
