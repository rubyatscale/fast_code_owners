# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rb_sys/extensiontask'

task build: :compile

GEMSPEC = Gem::Specification.load('fast_code_owners.gemspec')

RbSys::ExtensionTask.new('fast_code_owners', GEMSPEC) do |ext|
  ext.lib_dir = 'lib/fast_code_owners'
  ext.cross_compile = true
end

task default: %i[compile spec]
