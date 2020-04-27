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
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb :cat
end
