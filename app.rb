require 'sinatra'

require './models/package'

set :bind, '0.0.0.0'

get '/' do
  'Welcome to BookList!2'
end
