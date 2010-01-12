require 'rubygems'
require 'sinatra'
require 'sinatra/mongo'
require 'sinatra/effigy'

configure :development, :test do
  set :mongo, 'mongo://localhost:27017/job-board'
end

configure :production do
  credentials = "#{ENV['DATABASE_USER']}@#{ENV['DATABASE_PASSWORD']}"
  set :mongo, "http://#{credentials}:amazon.mongohq.com/job-board"
  enable :raise_errors
end

get '/' do
  effigy :index
end

get '/jobs/:id' do |id|
  job = mongo['jobs'].find('id' => id)
  effigy :job, job
end
