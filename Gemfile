source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

gem 'rails', '~> 6.1.5'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'rails-i18n', '~> 6.0.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'uglifier'
gem 'rails_12factor'
gem 'dry-transaction', '~> 0.13.3'
gem 'where_exists', '~> 2.0'

group :development, :test do
  gem 'pry-rails', '~> 0.3.4'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end
