module Gibbons
	class Connection
		include HTTParty
		attr_accessor :site, :prefix, :format

		def initialize(options={})
			self.site   = options[:site] if options[:site]
			self.prefix = options[:prefix] if options[:prefix]
			self.format = options[:format].to_sym if options[:format]
		end
	end
end