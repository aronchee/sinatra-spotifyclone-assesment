
# get '/playlists/:id/songs/new' do
# 	@playlist = Playlist.find(params[:id])
# 	erb :"/songs/new"
# end

#to get the page of the index.erb for songs
get '/playlists/:id/songs' do
	# byebug
	@playlist = Playlist.find(params[:id])
	@songs = @playlist.songs
	erb :'songs/index'
end

post '/playlists/:id/songs' do
	@playlist = Playlist.find(params[:id])
	@song = @playlist.songs.new(params[:song])
	# params= {playlist:{p_name:"dsadsa"}}
	if @song.save
		# @playlist = current_user.playlists
		# @msg1 = "New song has been added!"
		redirect "/playlists/#{@playlist.id}/songs"
	else
		@msg1 = "Error, Human!"
		redirect "/playlists/#{@playlist.id}/songs/new"
	end
	# @songs = @playlist.songs	
end

delete '/playlists/:playlist_id/songs/:song_id' do
	# @user = User.where('id !=?', current_user.id)
	@playlist = Playlist.find(params[:playlist_id])
	# @playlist.destroy
	@song = Song.find(params[:song_id])
	@song.destroy
	redirect "/playlists/#{@playlist.id}/songs"
end

#to get the edit.erb page
get '/playlists/:playlist_id/songs/:song_id/edit' do
	@playlist = Playlist.find(params[:playlist_id])
	@song = Song.find(params[:song_id])
	erb :"songs/edit"		
end

#to update the song of the particular id in a particular playlist
put '/playlists/:playlist_id/songs/:song_id' do
	# byebug
	@playlist = Playlist.find(params[:playlist_id])
	@song = Song.find(params[:song_id])
	@song.update(params[:song])
	if @playlist.save
		redirect "/playlists/#{@playlist.id}/songs"
	end
end