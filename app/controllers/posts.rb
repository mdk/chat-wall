class Posts < Application
  
  def index
    @posts = Post.find(:all, :order => "created_at DESC")
    render
  end
  
  def json_index
    @posts = Post.find(:all, :order => "created_at DESC")
    render :js => @posts.to_jsonn
  end
  
  def sample
    p = Post.find(:all) [0]
    partial("/shared/post", :with => p)
  end
  
  def create
    Post.create!(:body => params[:body])
    redirect url(:action => "index")
  end
  
  def dynamic_create
    p = Post.create(:body => params[:body])
    partial("/shared/post", :with => p)
  end
  
end
