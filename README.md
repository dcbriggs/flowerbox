# Flowerbox

Flowerbox gives you pretty log output for debugging rails applications

## Installation

Add this line to your application's Gemfile:

    gem 'flowerbox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flowerbox

## Usage

Flowerbox extends ActiveSupport::BufferedLogger with the method #flowerbox

It logs the inspected arguments at info loglevel along with the file and line where it was called.

```ruby
logger.flowerbox([], {})
```

```
================================================================================
/Users/ehrenmurdick/projects/flowerbox/test.rb:29:in `block (2 levels) in <top (required)>'
--------------------------------------------------------------------------------
[]
--------------------------------------------------------------------------------
{}
================================================================================
```


By default flowerbox only outputs in the log in development mode. To enable it in test or any other environment, create
config/initializers/flowerbox.rb and add

```ruby
Flowerbox.enable("test")
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
