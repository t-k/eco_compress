# EcoCompress

[![Gem Version](https://badge.fury.io/rb/eco_compress.png)](https://rubygems.org/gems/eco_compress)
[![Build Status](https://travis-ci.org/t-k/eco_compress.png)](https://travis-ci.org/t-k/eco_compress)

The content of JST template is out of JS compressor's work. EcoCompress overrides Eco.compile method to minify the Eco's template source itself.

To see more detail, see spec dir and compare minified files (e.g. *.min.out, *.min.js) to the original files (e.g. *.orig.out, *.orig.js).

## Installation

Add this line to your application's Gemfile:

    gem 'eco_compress'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eco_compress

## Usage

Add to Gemfile:

    gem 'eco_compress'

Or require it

    require 'eco_compress'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
