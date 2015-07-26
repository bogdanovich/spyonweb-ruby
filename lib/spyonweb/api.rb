module Spyonweb
  module API

    def summary(query)
      get('summary', query)
    end

    def domain(query)
      get('domain', query)
    end

    def ip(query, args = {})
      get('ip', query, args)
    end

    def adsense(query, args = {})
      get('adsense', query, args)
    end

    def analytics(query, args = {})
      get('analytics', query, args)
    end

    def dns_domain(query, args = {})
      get('dns_domain', query, args)
    end

    def ip_dns(query, args = {})
      get('ip_dns', query, args)
    end

  private

    def get(method, query, args = {})
      params = { access_token: Spyonweb.api_token }.merge(args)
      response = Spyonweb.resource["#{method}/#{CGI.escape(query)}"].get params: params
      Response.parse(response)
    end

  end
end
