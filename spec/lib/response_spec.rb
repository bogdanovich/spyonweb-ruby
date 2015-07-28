require 'spec_helper'

describe Spyonweb::Response do

  let(:successful_response) { OpenStruct.new(body: { status: "found", result: "something" }.to_json) }
  let(:unauthorized_response) { OpenStruct.new(body: { status: "error", message: "unauthorized" }.to_json) }
  let(:broken_json) { Struct.new(:body).new("not a json") }

  describe ".parse" do
    it "returns successful response object" do
      response = Spyonweb::Response.parse(successful_response)
      expect(response.status).to eq 'found'
      expect(response.result).to eq 'something'
    end

    it "returns unauthorized response object" do
      response = Spyonweb::Response.parse(unauthorized_response)
      expect(response.status).to eq 'error'
      expect(response.message).to eq 'unauthorized'
    end

    it "returns unauthorized response object" do
      response = Spyonweb::Response.parse(broken_json)
      expect(response.status).to eq 'error'
      expect(response.message).to match 'JSON::ParserError'
    end
  end
end
