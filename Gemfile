source 'https://rubygems.org'

gem 'rails',    '4.2.1'
gem 'mongoid',  '~> 4.0.0'
gem 'bson_ext' # Speeds up BSON serialization

gem 'cancan',     '~> 1.6.10'
gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem 'devise',     '~> 3.4.1'
gem 'haml-rails', '~> 0.9'
gem 'jquery-rails'

group :assets do
  gem 'coffee-rails', '~> 4.1.0'
  gem 'less-rails',   '~> 2.3.3'
  gem 'sass-rails',   '~> 5.0.1'
  gem 'therubyracer', platforms: :ruby
  gem 'turbolinks'
  gem 'twitter-bootstrap-rails', '~> 2.2.8'
  gem 'uglifier',     '~> 1.3.0'
end

group :development, :test do
  gem 'rspec-rails',  '~> 3.0.2'
  gem 'database_cleaner', require: false
  gem 'factory_girl_rails'
  gem 'pry-byebug', require: :false
end
