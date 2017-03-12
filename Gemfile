source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',        '~> 5.0.2'
gem 'pg',           '~> 0.18'
gem 'puma',         '~> 3.0'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'jquery-rails', '~> 4.2.2'
gem 'turbolinks',   '~> 5'
gem 'strava-api-v3'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console',            '>= 3.3.0'
  gem 'listen',                 '~> 3.0.5'
  gem 'spring',                 '~> 2.0.1'
  gem 'spring-watcher-listen',  '~> 2.0.0'
  gem 'rubocop',                '~> 0.47.1'
  gem 'byebug',                 '~> 9.0.6', platform: :mri
  gem 'colorize'
  gem 'dotenv-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
