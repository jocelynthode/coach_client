module CoachClient

  class AuthenticatedRequest < Request

    def self.get(url, username, password, header={})
      header.merge!(DEFAULT_HEADER)
      response = RestClient::Request.execute(method: :get, url: url,
                                             user: username,
                                             password: password,
                                             headers: header)
      self.new(response)
    end

    def self.put(url, username, password, payload, header={})
      header.merge!(DEFAULT_HEADER)
      response = RestClient::Request.execute(method: :put, url: url,
                                             user: username,
                                             password: password,
                                             payload: payload, headers: header)
      self.new(response)
    end

    def self.post(url, username, password, payload, header={})
      header.merge!(DEFAULT_HEADER)
      response = RestClient::Request.execute(method: :post, url: url,
                                             user: username,
                                             password: password,
                                             payload: payload, headers: header)
      self.new(response)
    end

    def self.delete(url, username, password, header={})
      header.merge!(DEFAULT_HEADER)
      response = RestClient::Request.execute(method: :delete, url: url,
                                             user: username,
                                             password: password,
                                             headers: header)
      self.new(response)
    end
  end
end
