# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bcrypt', '3.1.13'
gem 'bootsnap', '1.4.5', require: false
gem 'bootstrap-sass', '3.4.1'
gem 'jbuilder', '2.9.1'
gem 'puma', '3.12.2'
gem 'rails', '6.0.2.1'
gem 'sass-rails', '5.1.0'
gem 'turbolinks', '5.2.0'
gem 'webpacker', '4.0.7'

group :development, :test do
  gem 'byebug', '11.0.1', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '1.4.1'
end

group :development do
  gem 'listen', '3.1.5'
  gem 'spring', '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console', '4.0.1'
end

group :test do
  gem 'capybara', '3.28.0'
  gem 'guard', '2.15.0'
  gem 'guard-minitest', '2.4.6'
  gem 'minitest', '5.11.3'
  gem 'minitest-reporters', '1.3.8'
  gem 'rails-controller-testing', '1.0.4'
  gem 'selenium-webdriver', '3.142.4'
  gem 'webdrivers', '4.1.2'
end

group :production do
  gem 'pg', '1.1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
