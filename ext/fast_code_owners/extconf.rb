# frozen_string_literal: true

require "mkmf"
require "rb_sys/mkmf"

create_rust_makefile("fast_code_owners/fast_code_owners") do |ext|
  ext.extra_cargo_args += ["--crate-type", "cdylib"]
  ext.extra_cargo_args += ["--package", "fast_code_owners"]
end
