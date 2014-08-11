# Metova Mandrill

Metova Mandrill configures ActionMailer to use Mandrill by inspecting `ENV` for your Mandrill configuration options.

## Installation

Add this line to your application's Gemfile:

    gem 'metova-mandrill'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metova-mandrill

## Usage

Set the following ENV variables:

```ruby
ENV['MANDRILL_DOMAIN']
ENV['MANDRILL_DEFAULT_HOST']
ENV['MANDRILL_USERNAME']
ENV['MANDRILL_PASSWORD']
```

Your app is now configured to send e-mail via Mandrill. If `ENV['MANDRILL_DEFAULT_HOST']` is not set, `ENV['MANDRILL_DOMAIN']`
will be used for `default_url_options`. If `ENV['MANDRILL_DOMAIN']` is not set, the entire configuration will be skipped. This is
useful in the test/development environment.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/metova-mandrill/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
