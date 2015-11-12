module CoachClient
  class Client
    attr_reader :url

    def initialize(host, path='/')
      @url = host + path
    end

    def authenticated?(username, password)
      begin
        AuthenticatedRequest.get("#{@url}authenticateduser/", username, password)
        true
      rescue RestClient::Exception
        false
      end
    end

    def get_user(username)
      user = User.new(self, username)
      user.update
    end
  end
end
