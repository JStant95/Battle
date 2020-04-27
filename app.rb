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

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb :cat
end

get '/named-cat' do
  params.empty? ? @cat_name = "George" : @cat_name = params[:name]
  erb :cat
end
