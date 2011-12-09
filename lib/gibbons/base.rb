module Gibbons
	class Base
		cattr_accessor :logger

		cattr_accessor :configuration
		@@configuration = {}

		class_attribute :site
		class_attribute :prefix
		class_attribute :format

		def connection
			@connection = Connection.new(:site => self.site, :prefix => self.prefix, :format => self.format)
			@connection
		end
	end
end