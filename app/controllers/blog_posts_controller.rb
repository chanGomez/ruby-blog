class BlogPostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_blog_post, except: [:index, :new, :create]# OR YOU CAN DO => only [:show, :edit, :update, :destroy]

  def index
    #the line below saves all the blog posts in our db to an instance variable
    #rails know to share instance variables to erb templates
    @blog_posts = BlogPost.all
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create 
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def edit
  end
  
  def destroy
    @blog_post.destroy
    redirect_to root_path
  end
  
  def blog_post_params
      params.require(:blog_post).permit(:title, :body)
  end
  
  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
   #if in case of an error or in this case an id that does not exit in the db then send user to home page
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path 
  #root_path is => "/"
  end

end