module Gibbons
  class Request
    attr_reader :params, :headers, :login, :method
    attr_accessor :connection
    HTTPMethods = [:post, :get, :put, :delete]

    def initialize(connection)
      @connection = connection
    end

    def params(params)
      @params = params
      self
    end

    def headers(headers)
      @headers = headers
      self
    end

    def login(user=nil,password=nil)
      @login = [user, password]
      self
    end

    def post

    end

    def get

    end

    def put

    end

    def delete

    end
  end
end