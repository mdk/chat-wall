class Posts < Application
  
  def index
    @posts = Post.find(:all, :order => "created_at DESC")
    render
  end

  def dynamic_create
    p = Post.create(:body => params[:body])
    partial("/shared/post", :with => p)
  end
  
end
