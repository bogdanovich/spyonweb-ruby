require 'spec_helper'

describe '#api_token' do

  it "responds_to api_token" do
    expect(Spyonweb).to respond_to(:api_token)
  end

  it "sets api_token" do
    Spyonweb.api_token = 'LkvWvMuzlJYG'
    expect(Spyonweb.api_token).to eq 'LkvWvMuzlJYG'
  end

  it "has default api_base url" do
    expect(Spyonweb.api_base).to eq 'https://api.spyonweb.com/v1'
  end

  describe '.resource' do
    it 'responds_to resource' do
      expect(Spyonweb).to respond_to(:resource)
    end

    it 'returns RestClient::Resource' do
      resource = Spyonweb.resource
      expect(resource.class.name).to eq "RestClient::Resource"
      expect(resource.url).to eq Spyonweb.api_base
    end
  end
end
