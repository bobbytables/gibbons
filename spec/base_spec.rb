require 'spec_helper'

describe Gibbons::Base do
	it "should set a logger" do
		Gibbons::Base.should respond_to :logger=
	end

	it "should return a logger" do
		Gibbons::Base.should respond_to :logger
	end

	it ".connection should return a Gibbons::Connection object" do
		Gibbons::Base.site   = 'http://www.google.com'
		Gibbons::Base.prefix = '/'
		Gibbons::Base.format = :json

		base = Gibbons::Base.new
		base.connection.should be_kind_of Gibbons::Connection
	end

	it ".connection should return a Gibbons::Connection object with site" do
		Gibbons::Base.site   = 'http://www.google.com'
		Gibbons::Base.prefix = '/'
		Gibbons::Base.format = :json

		base = Gibbons::Base.new
		base.connection.site.should eq('http://www.google.com')
	end

	it ".connection should return a Gibbons::Connection object with prefix" do
		Gibbons::Base.site   = 'http://www.google.com'
		Gibbons::Base.prefix = '/'
		Gibbons::Base.format = :json

		base = Gibbons::Base.new
		base.connection.prefix.should eq('/')
	end

	it ".connection should return a Gibbons::Connection object with format" do
		Gibbons::Base.site   = 'http://www.google.com'
		Gibbons::Base.prefix = '/'
		Gibbons::Base.format = :json

		base = Gibbons::Base.new
		base.connection.format.should eq(:json)
	end
end