class Uploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process :resize_to_fill => [200, 200]

  storage :file_data

  def store_dir
    'images'
  end
end
