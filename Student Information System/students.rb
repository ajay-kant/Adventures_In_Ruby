require 'sinatra'
#require 'sinatra/reloader' if development?
require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/ajay.db")

class Studentdetail
	include DataMapper::Resource
	property :s_id, Serial
	property :fname, String
	property :lname, String
	property :address, String
	property :dob, String

end

DataMapper.finalize
DataMapper.auto_upgrade!

get '/students' do
	@var1=Studentdetail.all
	erb :students1
end

post '/students' do  
  st = Studentdetail.create(params[:stud])
  st.save
  redirect to("/students/#{st.s_id}")
end

get '/students/new' do	
	@var1=Studentdetail.new
	erb :add_student1
end

put '/students/:s_id' do
	st=Studentdetail.get(params[:s_id])
	st.update(params[:stud])
	redirect to("/students/#{st.s_id}")
end

get '/students/:s_id' do
	@dispStud = Studentdetail.get(params[:s_id])
	erb :display_student1
end

delete '/students/:s_id' do
  Studentdetail.get(params[:s_id]).destroy
  redirect to('/students')
end

get '/students/:s_id/edit' do
  @stud = Studentdetail.get(params[:s_id])
  erb :edit_student1
end
