# frozen_string_literal: true

require_relative 'lib/fast_code_owners/version'

Gem::Specification.new do |spec|
  spec.name = 'fast_code_owners'
  spec.version = FastCodeOwners::VERSION
  spec.authors = ['Perry Hertler']
  spec.email = ['perry.hertler@gusto.com']

  spec.summary = 'Lightning fast codeowners-rs ruby wrapper'
  spec.description = 'A ruby interface that determines file ownership for git repositories'
  spec.homepage = 'https://github.com/rubyatscale/fast_code_owners'
  spec.required_ruby_version = '>= 3.1'
  spec.required_rubygems_version = '>= 3.3.11'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/rubyatscale/fast_code_owners'
  spec.metadata['changelog_uri'] = 'https://github.com/rubyatscale/fast_code_owners/releases'
  spec.metadata['cargo_crate_name'] = 'fast_code_owners'

  spec.files = Dir['{lib,ext}/**/*', 'exe/codeowners', 'LICENSE', 'README.md', 'Cargo.*']
  spec.files.reject! { |f| File.directory?(f) }
  spec.files.reject! { |f| f =~ /\.(dll|so|dylib|lib|bundle)\Z/ }

  spec.bindir = 'exe'
  spec.executables << 'codeowners'
  spec.require_paths = ['lib']
  spec.extensions = ['ext/fast_code_owners/Cargo.toml']

  spec.add_dependency 'code_teams', '~> 1.0'
  spec.add_dependency 'packs-specification'
  spec.add_dependency 'sorbet-runtime'
  spec.add_development_dependency 'debug'
  spec.add_development_dependency 'railties'
  spec.add_development_dependency 'rb_sys', '~> 0.9.63'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sorbet'
  spec.add_development_dependency 'tapioca'
end
