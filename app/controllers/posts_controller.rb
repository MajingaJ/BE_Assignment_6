class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to post_path(@post), notice: "Post was uploaded successfully"
    else
      flash[:alert] = "There was an error posting a post"
      render :new
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])

    if @post.destroy
      flash[:notice] = "#{@post.postname} was sucessfully deleted."
    else
      flash[:alert] = "There was an error while attempting to delete this post."
    end

    redirect_to posts_path
  end

end