# rubocop-sensible

Sensible default for RuboCop.

## Purpose

The purpose of this tiny gem is to be useless at all.

No, seriously. This gem adds serveral congigurations for RuboCop that I think are sensible and that's it. If RuboCop's default will be changed in the future, it's useless anymore.

## What it does

It overrides the following configurations.

### Metrics/AbcSize

It increases the default value to `20`. It can be lower, but 20 seems pretty reasonable from my experience. Send a Pull Request if you have a different opinion.

### Metrics/LineLength

It can be disabled at all, but for now it's `160`. `160` comes from my experience that code which is longer than 160 characters tends to have some problem.

### Style/AsciiComments

When the team is not international, we'd like to write comments in our own language.

### Style/DoubleNegation

Double negation is used so widely that it doesn't make sense to disable it by default.

### Style/SymbolArray, Style/WordArray

This is a little controversial but using styles like `[:create, :edit]` makes sense.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-sensible', group: :development, require: false
```

And then execute:

    $ bundle

## Usage

Add the code snippet below to your `.rubocop.yml`

```ruby
inherit_gem:
  rubocop-sensible:
    - "config/rubocop.yml"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/okuramasafumi/rubocop-sensible. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rubocop-sensible project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/okuramasafumi/rubocop-sensible/blob/master/CODE_OF_CONDUCT.md).
