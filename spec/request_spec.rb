require 'spec_helper'

describe Gibbons::Request do
  before(:each) do
    class Dummy < Gibbons::Base; end
  end

  it "should return a request object for .params" do
    Dummy.params({}).should be_kind_of Gibbons::Request
  end

  it "should return a request object for .headers" do
    Dummy.headers({}).should be_kind_of Gibbons::Request
  end

  it "should return a request object for .login" do
    Dummy.login('example', 'example').should be_kind_of Gibbons::Request
  end
end