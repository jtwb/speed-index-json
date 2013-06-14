require 'susuwatari'

module CirconusSpeedIndex
  class WPTClient

    def initialize( params )
      @key = params.fetch(:key, 0)
      @url = params.fetch(:url)
    end

    def get_speed_index
      client = Susuwatari.new url: @url, k: @key, video: 1
      client.run
      sleep(1) until client.status != :running
      client
    end
  end
end
