source 'https://rubygems.org'
ruby '2.0.0'

def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ && require_as
end

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ && require_as
end

gem 'rails', '4.0.2'
gem 'sqlite3'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'bootstrap-sass'

group :development, :test do
  gem 'spring'
  gem 'rspec-rails'

  gem 'guard-spring'
  gem 'guard-rspec'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'

  gem 'factory_girl_rails'

  gem 'terminal-notifier-guard',
    :require => darwin_only('terminal-notifier-guard')
  gem 'libnotify', :require => linux_only('libnotify')
end

group :doc do
  gem 'sdoc', require: false
end
