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

post '/named-cat' do
  p params
  params.empty? ? @cat_name = "George" : @cat_name = params[:name]
  erb :cat
end

get '/naming-form' do
  erb :name_form
end
