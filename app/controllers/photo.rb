post '/photos' do
  fake_album = Album.create()


  puts params[:image]
  # load from temp file into string
  # put into database
  # :tempfile
  # :name
  file_data = Base64.encode64(params[:image][:tempfile].read)

  n = Photo.new(
    description: params[:description],
    file_data: file_data,     
    album_id: fake_album.id
  )
  puts "Here you GOOOO!!!"
  n.description = "asfasdf"
  if n.save 
    redirect '/', :notice => 'Note created successfully.'
  else
    redirect '/', :error => 'Failed to save note.'
  end
end

get '/photos/:photo_id' do 
  photo = Photo.find(params[:photo_id])
  file_data = Base64.decode64(photo.file_data)  
  content_type 'image/png'
  file_data
end

