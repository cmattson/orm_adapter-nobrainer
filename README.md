# orm_adapter-nobrainer

orm_adapter-nobrainer is an [OrmAdapter][orma] plugin that adds support for
Nicolas Viennot's [NoBrainer][nborm] RethinkDB ORM.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'orm_adapter-nobrainer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install orm_adapter-nobrainer

## Usage

Include it in your Gemfile.

## Caveats

**N.B.:** Not all orm_adapter tests pass! Due to eccentricities in the way
NoBrainer handles associations, orm_adapter-nobrainer currently fails (as
expected) when attempting to write to a has-many association.

This will *likely* not affect real-world use, but is on the roadmap to be
addressed.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/orm_adapter-nobrainer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[orma]: https://github.com/ianwhite/orm_adapter
[nborm]: https://github.com/nviennot/nobrainer/
