module Spyonweb

  class Response < Struct.new(:status, :result, :message, :response)
    def self.parse(response)
      begin
        hash = JSON.parse(response.body)
        status = hash['status']
        result = hash['result']
        message = hash['message']
      rescue JSON::ParserError => e
        status = "error"
        message = e.inspect
      end
      Response.new(status, result, message, response)
    end
  end

end
