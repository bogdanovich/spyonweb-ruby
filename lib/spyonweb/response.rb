module Spyonweb

  class Response < Struct.new(:status, :result, :response)
    def self.parse(response)
      begin
        hash = JSON.parse(response.body)
        status = hash['status']
        result = hash['result']
      rescue JSON::ParserError => e
        status = "error"
        result = e.message
      end
      Response.new(status, result, response)
    end
  end

end
