# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__
set :bind, '0.0.0.0'
set :environment, :production

run Sinatra::Application
