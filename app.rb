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
require 'haml'
require 'sass'
require 'rack'


use Rack::Reloader

# 
# Home
#

get '/?' do
  haml :index
end

post '/submit/?' do
  haml :speaker_submission_result
end


#
# Misc
#

get '/css/application.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :style
end