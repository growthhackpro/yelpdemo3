CarrierWave.configure do |config|
    config.fog_credentials = {
    :provider           => 'Rackspace',
    :rackspace_username => ENV["ogarcia"],
    :rackspace_api_key  => ENV["1e1abeeb4a894566bebd37ca749e85f9"],
    :rackspace_region   => :iad
  }
  config.fog_directory = ENV["Yelpdemo"]
 
end


