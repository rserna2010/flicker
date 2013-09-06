post '/photos' do
    # MUST CREATE CURRENT USER 
    current_user = User.find(session[:user_id])

    Photo.new()
    photo.album_id = 2
    photo.description = params[:description]
    photo.file_data = params[:image]
    photo.save
end

get '/photos/:photo_id' do 
  # photo = Photo.find(params[:photo_id])
  # file_data = Base64.decode64(photo.file_data)  
  # content_type 'image/png'
  # file_data
end

