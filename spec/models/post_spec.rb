require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Post do

  it "should be valid when new" do
    post = Post.new
    post.should be_valid
  end
  
  it "can be transformed to json" do
    post = Post.new
    post.to_json
  end

end