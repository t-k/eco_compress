begin
  require "bundler/setup"
rescue LoadError
  puts "Although not required, bundler is recommended for running the tests."
end
# load the library
require "simplecov"
SimpleCov.start :test_frameworks do
  add_filter "/vendor/bundle/"
end
require "rspec"
require "eco"
require "eco_compress"

RSpec.configure do |config|
  config.mock_with :rspec
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
end