require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Posts, "#index" do
  
  it "should respond correctly" do
    dispatch_to(Posts, :index).should respond_successfully
  end
end

describe Posts, "#dynamic_create" do

  before(:each) do
    @params = { :body => "This is a test" }
  end
  
  it "should respond correctly" do
    dispatch_to(Posts, :dynamic_create, @params).should respond_successfully
  end

  it "should change post count" do
    lambda { dispatch_to(Posts, :dynamic_create, @params) }.should change(Post, :count)
  end

  it "should render proper HTML content" do
    pending "Change the dynamic_create to use proper view rendering"
  end

end
