require 'rb_sys/extensiontask'

RbSys::ExtensionTask.new('fast_code_owners', GEMSPEC) do |ext|
  ext.lib_dir = 'lib/fast_code_owners'
end
