# fast_code_owners

A thin Ruby wrapper around [codeowners-rs](https://github.com/rubyatscale/codeowners-rs)

## Why?

The [codeowners-rs](https://github.com/rubyatscale/codeowners-rs) CLI is a fast alternative to the Ruby gem [code_ownership](https://github.com/rubyatscale/code_ownership). However, since codeowners-rs is written in Rust, it can't provide direct Ruby APIs.

**fast_code_owners** provides Ruby APIs that delegate to codeowners-rs. Much of this code was lifted from [code_ownership](https://github.com/rubyatscale/code_ownership).

## Installation

```bash
gem install fast_code_owners
```

## Usage

```ruby
require 'fast_code_owners'

# Find the owning team for the provided file path
team = FastCodeOwners.for_file('path/to/file.rb')

# Find the owning team for the provided class
team = FastCodeOwners.for_class(MyClass)

# Find the owning team for the provided packwerk/pks package.yml
team = FastCodeOwners.for_package('packs/foo/package.yml')

# Find the owning team for the provided error backtrace
teams = FastCodeOwners.for_backtrace(error.backtrace)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rubyatscale/fast_code_owners.
