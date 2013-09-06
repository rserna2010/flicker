post '/login' do 
	@current_user = User.find_by_email(params[:email])		
  user_id = @current_user.id

	if @current_user.password == params[:password]
		redirect to "/users/#{user_id}/albums"
	else
		@login_error = "User name or email are incorrect. Please try again"
		erb :index
	end

end


