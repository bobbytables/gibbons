module Gibbons
  class Base
    cattr_accessor :logger

    class_attribute :site
    class_attribute :prefix
    class_attribute :format

    class << self
      def configure(&block)
        yield self
      end

      def method_missing(method, *args, &block)
        if Request.instance_methods.include? method
          request = Request.new(@connection)
          return request.send(method, *args)
        end
      end

      def connection
        @connection ||= Connection.new(:site => self.site, :prefix => self.prefix, :format => self.format)
      end
    end
  end
end