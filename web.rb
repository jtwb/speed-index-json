require 'sinatra'
require 'json'

get '/' do
  JSON.dump test: 100
end
