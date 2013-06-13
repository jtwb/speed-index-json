require 'sinatra'
require 'json'

fixture = JSON.dump "speed-index" => 8192

get '/' do
  fixture
end
