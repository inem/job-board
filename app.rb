require 'rubygems'
require 'sinatra'
require 'sinatra/effigy'
require 'sinatra/mongoid'

set :mongo_db, 'job-board'

class Job
  include Mongoid::Document
  field :position
  field :company
  field :company_url
  field :description
  field :apply_at
end

get '/' do
  effigy :index
end

get '/jobs/new' do
  effigy :new
end

# post '/jobs' do
# end

get '/jobs/:id' do |id|
  effigy :job, Job.find(id)
end
