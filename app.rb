require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Hello a Jed"
end

get '/about' do
  "An about page"\n
  "This is another line"
end
