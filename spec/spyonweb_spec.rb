require 'spec_helper'

describe '#api_token' do

  it "responds_to api_token" do
    expect(Spyonweb).to respond_to(:api_token)
  end

  it "sets api_token" do
    Spyonweb.api_token = 'LkvWvMuzlJYG'
    expect(Spyonweb.api_token).to eq 'LkvWvMuzlJYG'
  end
end
