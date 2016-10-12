get '/' do
  
  erb :"static/login"

end

get '/home' do

	erb :"static/home"

end

get '/edit' do

	erb :"static/home-edit"

end