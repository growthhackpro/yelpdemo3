# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  #if Rails.env.production?
  #storage :fog
  #else
    storage :file
  #end

  process :resize_to_fit => [200, 300]

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


end


 