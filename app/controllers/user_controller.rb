post '/users' do 
	@new_user = User.new(email: params[:email], password: params[:password])

	if @new_user.save
      session[:user_id] = @new_user.id    
    	redirect to "/users/#{@new_user.id}/albums"
	else
		@creation_error = "Sorry you're email and string are not correct"
		erb :index
	end

end

post '/login' do 
  @loggedin_user = User.find_by_email(params[:email])    
  session[:user_id] = @loggedin_user.id

  if @loggedin_user.password == params[:password]
    redirect to "/users/#{@loggedin_user.id}/albums"
    erb :albums
  else
    @login_error = "User name or email are incorrect. Please try again"
    erb :index
  end

end




get '/users/:user_id/albums' do
  @albums = Album.where(user_id: session[:user_id])
	
  erb :albums
end




