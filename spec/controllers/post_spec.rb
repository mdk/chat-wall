require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Post, "index action" do
  before(:each) do
    dispatch_to(Post, :index)
  end
end