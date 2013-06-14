$: << '.'

require 'sinatra'
require 'json'

require 'init/redis'
require 'lib/client'

fixture = {
  "speed-index" => 4096,
  "visually-complete" => 8192
}

client = CirconusSpeedIndex::WPTClient.new url: 'http://www.modcloth.com/'

get '/*' do
  ## TODO should retrieve the XML result from WPT
  ## TODO should use a local caching proxy (
  ## TODO should accept a WPT key as config
  ## TODO should accept hostname as config
  fixture[:path] = params[:splat].first
  JSON.dump fixture
end

get '/fire' do
  client.get_speed_index
end
