module Gibbons
	class Base
		cattr_accessor :logger

		cattr_accessor :configuration
		@@configuration = {}

		class_attribute :site
		class_attribute :prefix
		class_attribute :format

		def connection

		end
	end
end