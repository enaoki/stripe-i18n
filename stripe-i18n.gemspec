lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stripe_i18n/version'

Gem::Specification.new do |spec|
  spec.name          = 'stripe-i18n'
  spec.version       = StripeI18n::VERSION
  spec.authors       = ['Eric Koslow', 'Spencer Bell']
  spec.email         = ['ekoslow@gmail.com', 'spencer@teespring.com']
  spec.summary       = %q{Ruby i18n translations for Stripe error messages.}
  spec.description   = %q{Currently supports German (de), French (fr), Italian (it), Dutch (nl), Spanish (es), and Brazilian Portuguese (pt-BR)}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5'

  spec.add_runtime_dependency('i18n', '~> 1.0')
  spec.add_runtime_dependency('railties', '~> 7.0')

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'i18n-spec', '~> 0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec-rails', '= 5.1.2'
  spec.add_development_dependency 'spork', '~> 1.0rc'
end
