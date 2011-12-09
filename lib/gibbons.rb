require "gibbons/version"

require 'active_support/concern'
require 'acctive_support/attribute_accessors'
require 'httparty'
require 'hashie'

module Gibbons
  class << self
  	def configure(&block)
  		Gibbons::Base.configure(&block)
  	end
  end
end
