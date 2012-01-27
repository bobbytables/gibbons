require 'spec_helper'

describe Gibbons::Base do
  it "should set a logger" do
    Gibbons::Base.should respond_to :logger=
  end

  it "should return a logger" do
    Gibbons::Base.should respond_to :logger
  end

  describe "Connections" do
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

  describe "Configuration" do
    it "should configure site with a block" do
      Gibbons::Base.configure do |config|
        config.site   = 'http://www.creativequeries.com'
      end

      Gibbons::Base.site.should eq('http://www.creativequeries.com')
    end

    it "should configure prefix with a block" do
      Gibbons::Base.configure do |config|
        config.prefix = '/stuff'
      end

      Gibbons::Base.prefix.should eq('/stuff')
    end

    it "should configure format with a block" do
      Gibbons::Base.configure do |config|
        config.format = :json
      end

      Gibbons::Base.format.should eq(:json)
    end
  end
end