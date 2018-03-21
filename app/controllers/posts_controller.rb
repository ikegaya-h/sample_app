class PostsController < ApplicationController
  def new
  	  @post = Post.new
  end

  def create

  	  post = Post.new(post_parms)

  	  post.save

  	  redirect_to post_path(post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
  	  @post = Post.find(params[:id])
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
      post = Post.find(parms[:id])
      posst.update(post_params)
      redirect_to post_path(post.id)
  end

  def destroy
      post = Post.find(params[:id])
      post.destroy
      redirect_to post_path
  end

  private

  def post_parms
  	  params.require(:post).permit(:title, :body, :image)
  end
end
