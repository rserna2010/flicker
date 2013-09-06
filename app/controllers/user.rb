post '/users' do 
	@new_user = User.new(email: params[:email], password: params[:password])

	if @new_user.save
		redirect to '/users/:user_id/albums'
	else
		@creation_error = "Sorry you're email and string are not correct"
		erb :index
	end

end


get '/users/:user_id/albums' do

	erb :albums
end