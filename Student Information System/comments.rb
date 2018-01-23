require 'sinatra'
#Srequire 'sinatra/reloader' if development?
require 'dm-core'
require 'dm-timestamps'
require 'dm-migrations'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/ajay.db")

class Comment
	include DataMapper::Resource
	property :c_id, Serial
	property :comment, String
	property :name, String
	property :created_at, DateTime
end

DataMapper.finalize
DataMapper.auto_upgrade!

get '/comments' do
	@cmt=Comment.all
	erb :comments1
end

get '/comments/new' do
	@cmmt=Comment.new
	erb :add_comments1
end

post '/comments' do  
  cmmt = Comment.create(params[:cmmt])
  cmmt.save
  redirect to("/comments/#{cmmt.c_id}")
end

get '/comments/:id' do
	@cmt=Comment.all
	erb :comments1
end

get '/comments/:c_id/viewdetails' do
	@cmmt=Comment.get(params[:c_id])
	print "#{@cmmt.c_id}"
	erb :view_comment1
end