source 'http://rubygems.org'

gem 'rails', '3.1.3'

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "haml", ">= 3.1.2"
gem "devise", ">= 1.5.0"
gem "twitter-bootstrap-rails"
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"

group :development do
  #TODO: switch to postgres in the future -Lance
  gem 'sqlite3'
  gem "haml-rails", ">= 0.3.4"
  gem "rspec-rails", ">= 2.8.0.rc1"
  gem "guard", ">= 0.6.2"
  gem 'rb-fsevent'
  gem 'growl'
  gem "guard-bundler", ">= 0.1.3"
  gem "guard-rails", ">= 0.0.3"
  gem "guard-rspec", ">= 0.4.3"
  gem "guard-cucumber", ">= 0.6.1"
  gem "heroku"
end

group :test do
  gem "factory_girl_rails", ">= 1.4.0"
  gem "cucumber-rails", ">= 1.2.0"
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.7.0"
  gem "launchy", ">= 2.0.5"
end

group :production do
  gem 'therubyracer-heroku'
  gem 'pg'
end

