require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "<h1> JecK Ded </h1>"
end

get '/about' do
  "An about page"
end

get '/cat' do
  erb :cat
end
