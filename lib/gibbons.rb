require "gibbons/version"

require 'active_support/core_ext/class/attribute_accessors'
require 'active_support/core_ext/class/attribute'
require 'hashie'

module Gibbons
  class << self
  	def configure(&block)
  		Gibbons::Base.configure(&block)
  	end
  end

  autoload :Base, 'gibbons/base'
  autoload :Connection, 'gibbons/connection'
end
