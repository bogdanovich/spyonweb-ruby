## Spyonweb.com ruby bindings

[![Gem Version](https://badge.fury.io/rb/spyonweb.svg)](http://badge.fury.io/rb/spyonweb) [![Code Climate](https://codeclimate.com/github/bogdanovich/spyonweb-ruby/badges/gpa.svg)](https://codeclimate.com/github/bogdanovich/spyonweb-ruby)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spyonweb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spyonweb

## Usage

```ruby
require 'spyonweb'

Spyonweb.api_token = 'MY_TOKEN'

# Available methods

Spyonweb.summary('fullmooncalendar.net')

Spyonweb.domain('fullmooncalendar.net')

Spyonweb.adsense('pub-5953444431482912')

Spyonweb.analytics('UA-34505845')

Spyonweb.ip('157.166.226.25', limit: 10)

Spyonweb.dns_domain('sjc-dns1.ebaydns.com', start: 'ebaystores.com', limit: 10)

Spyonweb.ip_dns('8.8.8.8')
```

## Contributing

1. Fork it ( https://github.com/bogdanovich/spyonweb-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
