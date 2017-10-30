require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "mysql2",
  :host => ENV["MYSQL_HOST"],
  :username => ENV["MYSQL_USER"],
  :password => ENV["MYSQL_PASSWORD"],
  :database => ENV["MYSQL_DATABASE"]
)

class Package < ActiveRecord::Base
end

ActiveRecord::Migration.create_table :packages do |t|
  t.string :name
end

class App < Sinatra::Application
end
