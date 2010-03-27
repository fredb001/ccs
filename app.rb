# Pony 0.6 is required due to incompatibilities on Heroku/Sendgrid
gem 'pony', '0.6'

begin
  # Require the preresolved locked set of gems.
  require ::File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  # Fallback on doing the resolve at runtime.
  require "rubygems"
  require "bundler"
  Bundler.setup
end

require 'sinatra'
require 'sinatra/sequel'
require 'sequel'
require 'haml'
require 'sass'
require 'rack'
require 'pony'
require 'logger'

#configure :development do
use Rack::Reloader
#end

set :database, ENV['DATABASE_URL'] || 'sqlite://ccs.db'

migration "create the submissions table" do
  puts "the submissions table doesn't exist."
  database.create_table :submissions do
    primary_key :id
    text :full_name
    text :title
    text :description
    text :email
    text :homepage
    text :biography
    timestamp :created_at
    timestamp :updated_at

  end
end

migration "add accept, reject and deleted columns to submissions table" do
  puts "adding columns to submissions table"
  database.alter_table :submissions do
    add_column :rejected, :bool, :default => false
    add_column :accepted, :bool, :default => false
    add_column :deleted, :bool, :default => false
  end
end

migration "create the speakers table" do
  puts "the speakers table doesn't exist"
  database.create_table :speakers do
    primary_key :id
    text :full_name
    text :biography
    text :email
    text :homepage
    timestamp :created_at
    timestamp :updated_at
  end
end

migration "create the sessions table" do
  puts "the sessions table doesn't exist"
  database.create_table :sessions do
    primary_key :id
    text :title
    text :description
    timestamp :created_at
    timestamp :updated_at
  end
end

migration "create a user table" do
  database.create_table :users do
    primary_key :id
    text :handle
    text :password
    timestamp :created_at
    timestamp :updated_at

  end
end

class Submission < Sequel::Model
  def validate
    errors[:full_name] << "can't be empty" if full_name.empty?
    errors[:biography] << "can't be empty" if biography.empty?
    errors[:email] << "can't be empty" if email.empty?
    errors[:title] << "con't be empty" if title.empty?
  end

  def before_save
    begin
      Pony.mail(:via => :smtp,
                :to => 'ccc2@just3ws.com',
                :from => 'submissions@chicagocodecamp.com',
                :subject => 'New Speaker Submission.',
                :body => self.to_yaml,
                :smtp => {:host => 'smtp.sendgrid.net',
                  :auth => 'plain',
                  :user => ENV['SENDGRID_USERNAME'],
                  :password => ENV['SENDGRID_PASSWORD'],
                  :domain => ENV['SENDGRID_DOMAIN'],})
    rescue
      puts "Error sending email; Error #{$!}"
    end
  end
end

class Session < Sequel::Model
end

class Speaker < Sequel::Model
  def validate
    errors[:full_name] << "can't be empty" if full_name.empty?
    errors[:biography] << "can't be empty" if biography.empty?
    errors[:email] << "can't be empty" if email.empty?
  end
end

class User < Sequel::Model
end

# 
# Home
#

get '/?' do
  haml :'index'
end

post '/submit/?' do
  begin
    submission = Submission.new
    submission.full_name = params[:full_name].to_s
    submission.title = params[:title].to_s
    submission.description = params[:description].to_s
    submission.email = params[:email].to_s
    submission.homepage = params[:homepage].to_s
    submission.biography = params[:biography].to_s
    submission.created_at = Time.now
    submission.updated_at = Time.now

    @model = submission

    submission.save

    haml :'submissions/show'
  rescue
    puts "error inserting record; Error #{$!}"
    "<html><head><title>Chicago Code Camp - Error</title></head><body>Whoops! We had a slight error.</body></html>"  
  end
end

get '/submissions' do
  protected!
  @submissions = Submission.filter(:deleted => false, :accepted => false, :rejected => false)
  haml "
%table
  - @submissions.each do |s|
    %tr
      %td
        %a{:href => \"/submission/#\{s.id\}/delete\" } delete
      %td
        %a{:href => \"/submission/#\{s.id\}/accept\"} accept
      %td
        %a{:href => \"/submission/#\{s.id\}/reject\"} reject
      %td= s.title
      %td= s.full_name
      %td= s.description
      %td= s.email
      %td= s.homepage
      %td= s.biography
  "
end

get "/submission/:id/:action" do
  protected!

  s = Submission[params[:id]]

  @title = s.title
  if params[:action].downcase == 'delete'
    s.deleted = true;
    s.save
    haml :'submissions/delete'
  elsif params[:action].downcase == 'accept'

    spkr = Speaker.new
    spkr.full_name = s.full_name
    spkr.email = s.email
    spkr.homepage = s.homepage
    spkr.biography = s.biography
    spkr.save

    sssn = Session.new
    sssn.title = s.title
    sssn.description = s.description
    sssn.save
    s.accepted = true

    haml :'submissions/accept'
  elsif params[:action].downcase == 'reject'
    s.rejected = true
    haml :'submissions/reject'
  end
  s.save
end

# GET    /sessions           index
get '/sessions' do
  @sessions = Session.all
  haml "
%table
  - @sessions.each do |s|
    %tr
      %td= s.title
      %td= s.description
  "
end

# GET    /speakers           index
get '/speakers' do
  @speakers = Speaker.all
  haml "
%table
  - @speakers.each do |s|
    %tr
      %td= s.full_name
      %td= s.biography
      %td= s.email
      %td= s.homepage
  "
end

# GET    /speaker/create     create
get '/speaker/create' do
  haml "
%form{:method=>'post', :action=>'/speaker/new'}
  %input{:type=>'text', :id=>'id'}
  %input{:type=>'submit'}
  "
end
# POST   /speaker/new        new
post '/speaker/new' do
  'posted a new speaker'
  redirect '/speaker/4'
end

# GET    /speaker/:id        show
get '/speaker/:id' do
  "show #{params[:id]}"
end

# GET    /speaker/:id/edit   edit
get '/speaker/:id/edit' do
  "edit #{params[:id]}"
end
# PUT    /speaker/:id/update update
# POST   /speaker/:id/update update
update = lambda {'update :#{params[:id]}'}
put  '/speaker/:id/update', &update
post '/speaker/:id/update', &update

# DELETE /speaker/:id/delete destroy
# POST   /speaker/:id/delete destroy
destroy = lambda {'destroy #{params[:id]}'}
delete '/speaker/:id/delete', &destroy
post   '/speaker/:id/delete', &destroy

#
# Misc
#

get '/css/application.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :style
end

helpers do
  def protected!
    unless authorized?
      response['WWW-Authenticate'] = %(Basic realm="Testing HTTP Auth")
      throw(:halt, [401, "Not authorized\n"])
    end
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)

    @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == ['admin', 'nimda']
  end

end
