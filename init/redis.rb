require 'redis'

if !ENV["REDISTOGO_URL"]
  puts "Fatal error: missing ENV REDISTOGO_URL"
  exit
end

uri = URI.parse(ENV["REDISTOGO_URL"])
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
