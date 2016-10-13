# get '/playlists/new' do
# 	erb :"/playlists/create"
# end

post '/playlists' do
	@playlist = current_user.playlists.new(params[:playlist])
	# params= {playlist:{p_name:"dsadsa"}}
	if @playlist.save
		@msg1 = "New playlist has been created!"
	elsif @playlist == ""
		@msg1 = "Error, Human!"
	end
	# @songs = @playlist.songs
	redirect "/index"
end

# get '/playlists/:id/songs' do
# 	# byebug
# 	@playlist = Playlist.find(params[:id])
# 	@songs = @playlist.songs
# 	erb :'songs/index'
# 	# redirect '/songlist'

# end

#to get the particular playlist to edit
get '/playlists/:playlist_id/edit' do
	@playlist = Playlist.find(params[:playlist_id])
	erb :"playlists/edit"		
end

#edit the particular playlist
put '/playlists/:playlist_id' do
	# byebug
	@playlist = Playlist.find(params[:playlist_id])
	@playlist.update(params[:playlist])
	if @playlist.save
		redirect "/index"
	end
end

delete '/playlists/:playlist_id' do
	# @user = User.where('id !=?', current_user.id)
	@playlist = Playlist.find(params[:playlist_id])
	@playlist.destroy
	redirect "/index"
end