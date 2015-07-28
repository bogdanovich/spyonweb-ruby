require 'spec_helper'

describe Spyonweb::API do

  describe '.get' do
    it "performs get request" do
      Spyonweb.api_token = 'TOKEN'
      response = OpenStruct.new(body: {status: 'error', message: 'unauthorized'}.to_json)

      allow_any_instance_of(RestClient::Resource).to receive(:get) { |arg|
        expect(arg.url).to eq Spyonweb.api_base + "/domain/spyonweb.com"
      }.and_return(response)

      expect(Spyonweb::Response).to receive(:parse).with(response)

      Spyonweb.send(:get, 'domain', 'spyonweb.com')
    end
  end

  describe '.summary' do
    it "calls get summary" do
      expect(Spyonweb).to receive(:get).with('summary', 'spyonweb.com') {}
      Spyonweb.summary('spyonweb.com')
    end
  end

  describe '.domain' do
    it "calls get domain" do
      expect(Spyonweb).to receive(:get).with('domain', 'spyonweb.com') {}
      Spyonweb.domain('spyonweb.com')
    end
  end

  describe '.ip' do
    it "calls get ip" do
      expect(Spyonweb).to receive(:get).with('ip', 'spyonweb.com', {}) {}
      Spyonweb.ip('spyonweb.com')
    end
  end

  describe '.adsense' do
    it "calls get adsense" do
      expect(Spyonweb).to receive(:get).with('adsense', 'spyonweb.com', { start: 'test.com', limit: 10}) {}
      Spyonweb.adsense('spyonweb.com', start: 'test.com', limit: 10)
    end
  end

  describe '.analytics' do
    it "calls get analytics" do
      expect(Spyonweb).to receive(:get).with('analytics', 'spyonweb.com', { start: 'test.com', limit: 10}) {}
      Spyonweb.analytics('spyonweb.com', start: 'test.com', limit: 10)
    end
  end

  describe '.dns_domain' do
    it "calls get dns_domain" do
      expect(Spyonweb).to receive(:get).with('dns_domain', 'spyonweb.com', { start: 'test.com', limit: 10}) {}
      Spyonweb.dns_domain('spyonweb.com', start: 'test.com', limit: 10)
    end
  end

  describe '.ip_dns' do
    it "calls get ip_dns" do
      expect(Spyonweb).to receive(:get).with('ip_dns', 'spyonweb.com', { start: 'test.com', limit: 10}) {}
      Spyonweb.ip_dns('spyonweb.com', start: 'test.com', limit: 10)
    end
  end

end
