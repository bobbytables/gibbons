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
    end

    def connection
      @connection ||= Connection.new(:site => self.site, :prefix => self.prefix, :format => self.format)
    end
  end
end