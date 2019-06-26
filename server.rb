require "sinatra"
require "httparty"

get '/' do
  erb :home
end

get '/cake' do
  erb :cake
end

get '/cookie' do
  erb :cookie
end

get '/muffin' do
  erb :muffin
end
