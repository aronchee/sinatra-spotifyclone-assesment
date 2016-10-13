get '/' do 
  	erb :"static/login"
end

# get '/profile' do
# 	erb :"static/profile"
# end

get '/create' do
	erb :"/playlists/create"
end

get '/index' do 
	erb :"/playlists/index"
end

get '/edit' do
	erb :"/playlists/edit"
end


# get '/songlist' do
# 	erb :"/songs/index"
# end
