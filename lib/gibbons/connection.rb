module Gibbons
	class Connection
		attr_accessor :site, :prefix, :format

		def initialize(options={})
			site   = options[:site] if options[:site]
			prefix = options[:prefix] if options[:prefix]
			format = options[:format] if options[:format]
		end
	end
end