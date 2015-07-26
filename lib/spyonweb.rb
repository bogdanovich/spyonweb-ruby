require 'rest-client'
require 'json'

require 'spyonweb/version'
require 'spyonweb/response'
require 'spyonweb/api'

module Spyonweb
  extend self

  @api_base = 'https://api.spyonweb.com/v1'

  attr_accessor :api_token, :api_base

  def resource
    RestClient::Resource.new @api_base
  end

  extend Spyonweb::API
end
