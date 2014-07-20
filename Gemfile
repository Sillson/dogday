source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'figaro'
gem 'haml-rails'
gem 'pg'
gem 'simple_form'
gem 'rack-timeout'
gem "friendly_id", "~> 5.0.3"
gem 'wicked_pdf'
gem 'time_difference'
gem 'newrelic_rpm'
gem 'backstretch-rails'

group :development do
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'wkhtmltopdf-binary'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem "wkhtmltopdf-heroku", :git => 'git://github.com/camdez/wkhtmltopdf-heroku.git'
end
