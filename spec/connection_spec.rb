require 'spec_helper'

describe Gibbons::Connection do
	it "should start an instance with a site" do
		connection = Gibbons::Connection.new(:site => 'http://www.google.com')
		connection.site.should eq('http://www.google.com')
	end

	it "should start an instance with a prefix" do
		connection = Gibbons::Connection.new(:prefix => '/q')
		connection.prefix.should eq('/q')
	end

	it "should start an instance with a format" do
		connection = Gibbons::Connection.new(:format => :json)
		connection.format.should eq(:json)
	end
end