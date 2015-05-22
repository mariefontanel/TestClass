
require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'dev.db'
)

class Toto < ActiveRecord::Base
end

get '/' do  
	@y = Toto.all() 
	erb :index
end 

post '/' do 
	@y = Toto.new(params[:totos])
	@y.save
	redirect '/'
end