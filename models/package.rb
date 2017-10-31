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
  def to_json
    '{
    "name": "' + self.name + '"
    }'
  end
end

# if ActiveRecord::Base.connection.table_exists? 'packages' == false
  ActiveRecord::Migration.create_table :packages do |package|
    package.string    :user_id
    package.string    :tracking_number
    package.integer   :purchase_amount
    package.date      :purchase_date
    package.date      :delivery_date
    package.date      :leaving_date
    package.date      :arrival_date
  end
# end

class App < Sinatra::Application
  p Package.all
end
