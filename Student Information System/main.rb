require 'sinatra'
#require 'sinatra/reloader' if development?

require './students.rb'
require './comments.rb'

#for session management 
configure do
	enable :session
	set :username, "ajay"
	set :password, "ajay123"
end

#configure do
 #     set :public_folder  , File.expand_path('../public', __FILE__)
 #     set :views          , File.expand_path('../views', __FILE__)
 #    set :root           , File.dirname(__FILE__)
 #     set :show_exceptions, development?
#end


helpers do
	def userlogin?
		session[:userlogin]
	end
end

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/ajay.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end


post '/login' do
	if params[:username]==settings.username && params[:password]==settings.password
		session[:userlogin]=true
		erb :homeLoggedIn1
	else
		erb :login1
		message="Invalid password"
	end
end

get '/logout' do
	session[:userlogin]=false
	session.clear
	redirect to ('/') 
end

get '/' do
  erb :home1
end

get '/about' do
  erb :about1
end

get '/contact' do
  erb :contact1
end

get '/students' do
  erb :students1
end

get '/comments' do
  erb :comments1
end

get '/video' do
  erb :video1
end

get '/login' do
  erb :login1
end

get '/homeLoggedIn' do
  erb :homeLoggedIn1
end

get '/aboutLoggedIn' do
  erb :aboutLoggedIn1
end

get '/contactLoggedIn' do
  erb :contactLoggedIn1
end

not_found do
  erb :not_found1
end




