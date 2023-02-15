# interval_inflector

Adds support for stringifying ActiveSupport::Duration objects into intervals

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add interval_inflector

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install interval_inflector

## Usage

```ruby
# to_interval taks an optional `in` argument to convert
# the duration into. Defaults to the current interval
1.minute.to_interval(in: :seconds) #=> "every 60 seconds"
1.year.to_interval(in: :months) #=> "every 12 months"
6.months.to_interval #=> "every 6 months"
1.minute.to_interval #=> "every minute"
1.month.to_interval #=> "monthly"
1.year.to_interval #=> "yearly"
1.week.to_interval #=> "weekly"
1.day.to_interval #=> "daily"
1.hour.to_interval #=> "hourly"
1.second.to_interval #=> "every second"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/npezza93/interval_inflector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/npezza93/interval_inflector/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IntervalInflector project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/npezza93/interval_inflector/blob/main/CODE_OF_CONDUCT.md).
