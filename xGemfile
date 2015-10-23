source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'sass-rails', '>= 3.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks', '~> 2.1.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap-sass', '~> 3.3.5'
gem 'devise', '~> 3.5.1'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'httparty'
gem 'puma'

# paperclip
# Easy upload management for ActiveRecord (requires imagemagick)
gem 'paperclip', '~> 4.3.0'

# Installed ImageMagick into environment
# sudo apt-get imagemagick

gem 'aws-sdk', '~> 1'
gem 'aws-sdk-resources', '~> 2'

# Masonry will rock your world! Layout
gem 'masonry-rails', '~> 0.2.4'

# Font-Awesome Sass gem for use in Ruby/Rails projects
gem 'font-awesome-sass', '~> 4.3.0'

# stripe payments gem
gem 'stripe', git: 'https://github.com/stripe/stripe-ruby'

# installed imagga gem manually with this line from imagga site
gem 'imagga', '~> 0.0.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'pg', '0.17.1'

# Use react-rails for pipeline
gem 'react-rails', '~>1.2.0'

# Loads environment variables from .env (or .env.development)
gem 'dotenv-rails'

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0'

group :development, :test do
  # ruby/rails linter for code quality and good practices
  gem 'rubocop'

  gem 'awesome_print'

  # Good REPL, replacement for IRB (use instead of byebug)
  gem 'pry-rails'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-byebug' # adds next, previous, finish and continue commands to pry

  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor', '0.0.2'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'codeclimate-test-reporter', require: nil
  gem 'capybara', '2.5.0'
  gem 'capybara-webkit', '1.7.0'
  gem 'selenium-webdriver', '2.47.1'
  gem 'poltergeist'
end

