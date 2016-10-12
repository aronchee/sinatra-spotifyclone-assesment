enable :sessions

post '/login' do
		@user = User.find_by(username: params[:username])
	 # byebug
		if @user.try(:authenticate, params[:password]) 
			login @user
		# byebug
			erb :"static/home"
			redirect '/home'
		# @msg1 = "You have logged in"
		else
			@msg = "Wrong username or password! Are you sure you are human?"
			erb :"static/login"
		end
end

post '/signup' do
	# byebug
	@user = User.new(params[:user])
	if @user.save
		@msg = "You have signed up, now let's log in!"
		# when user enter valid character
	else
		@msg = "Fail to sign up!"
		# when user enter invalid character
	end 
	erb :"static/login"
end

# get '/users/:id/edit' do

# end

get '/logout' do
	session[:user_id] = nil
	redirect '/'
end

get '/users/:id/delete' do
	# @user = User.where('id !=?', current_user.id) #fail to be used
	@user = current_user
	@user.delete
	redirect '/'
end