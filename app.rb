require 'sinatra'
require 'json'

require './models/package'

set :bind, '0.0.0.0'

get '/' do
  content_type 'application/json'
  # 'Welcome to BookList!2'
  Package.all[0].to_json
  # JSON.parse(Package.all[0]).name
end
