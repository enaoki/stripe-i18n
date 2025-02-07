StripeI18n
==========

[![Build
Status](https://secure.travis-ci.org/ekosz/stripe-i18n.png)](http://travis-ci.org/ekosz/stripe-i18n)

The gem adds a collection of translated error strings for `Stripe::CardError`.

**ARCHIVED**

Unfortunatly I have not done any work with Ruby in 6+ years now. I have reached out multiple times to the Stripe team trying to hand off this gem to them with no responses. Please feel free to fork this library if you would like revive it!

**Supported Locales:**

1. en (English - US)
1. es (Spanish)
1. de (German)
1. fr (French)
1. it (Italian)
1. nl (Dutch)
1. pt-BR (Portuguese - Brazil)
1. ru (Russian)
1. nb (Norwegian)
1. ja (Japanese)
1. zh-HK (Chinese - Hong Kong)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stripe-i18n'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stripe-i18n

## Usage

Use the code on the error object (`Stripe::CardError`) to get the correct
translation key.

```ruby
def charge_token(token, amount)
  Stripe::Charge.create(
    amount: amount,
    currency: 'usd',
    card: token,
  )

  { success: true, msg: I18n.translate('charge.success') }
rescue Stripe::CardError => e
  { success: false, msg: I18n.translate("stripe.errors.#{e.code}") }
end
```

## Testing
    $ rspec --drb

## Contributing

1. Fork it ( https://github.com/ekosz/stripe-i18n/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
