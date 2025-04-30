# LibraryStandardNumbers

LibraryStandardNumbers is a ruby wrapper of the rust crate [library_stdnums](https://github.com/pulibrary/library_stdnums). 

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add library_standard_numbers
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install library_standard_numbers
```

## Usage

```
LibraryStandardNumbers::ISBN.normalize '0-306-40615-2'
LibraryStandardNumbers::ISBN.valid? '0-306-40615-2'

LibraryStandardNumbers::ISSN.normalize '0378-5955'
LibraryStandardNumbers::ISSN.valid? '0378-5955'

LibraryStandardNumbers::LCCN.normalize 'n78-890351'
LibraryStandardNumbers::LCCN.valid? 'n78-890351'
```

## Development

1. git clone https://github.com/pulibrary/library_standard_numbers
2. run `bin/setup` to install dependencies.
3. run `bundle exec rake` to run the tests.
4. (optional) run `bundle exec rake compile && bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pulibrary/library_standard_numbers.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
