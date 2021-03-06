# Sms50X

[![Build Status](https://travis-ci.org/ejedigitalcr/sms50X-ruby.svg?branch=master)](https://travis-ci.org/ejedigitalcr/sms50X-ruby) [![Coverage Status](https://coveralls.io/repos/github/ejedigitalcr/sms50X-ruby/badge.svg?branch=master)](https://coveralls.io/github/ejedigitalcr/sms50X-ruby?branch=master) [![Gem Version](https://badge.fury.io/rb/sms50X-ruby.svg)](https://badge.fury.io/rb/sms50X-ruby)

A Ruby library for interacting with the SMS50X Web API (<http://www.sms506.com>).

## Installation

Add this line to your Gemfile:

```ruby
gem 'sms50X'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sms50X

## Usage

### Send a single SMS message

```ruby
require 'sms50X'
client = SMS50X::Client.new('API_KEY')
message = client.messages.build( to: '55515523', content: 'This is a test message.')
response = message.deliver

if response.success
  puts response.message_id
else
  puts response.error_code
  puts response.error_description
end
```

### Check balance

```ruby
require 'sms50X'
client = SMS50X::Client.new('API_KEY')
balance = client.balance
puts balance # => 25
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sms50X. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
