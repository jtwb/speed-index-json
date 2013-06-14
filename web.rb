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
  fixture[:path] = params[:splat].first
  JSON.dump fixture
end

get '/test' do
  client.get_speed_index
end
