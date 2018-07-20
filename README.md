# Diffcop

Apply rubocop only diff from master.  
We should KEEP our project 0 result rubocop points out.  
Actually,however,you face projects which rubocop become angry more than 10000 times.  
Then,you should KAIZEN your project step by step.  
May this help you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'diffcop', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diffcop

## Usage

`bundle exec diffcop`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yohira0616/diffcop.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

