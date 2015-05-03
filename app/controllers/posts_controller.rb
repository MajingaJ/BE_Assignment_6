class PostsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    @author = @post.author
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post), notice: "Post was uploaded successfully"
    else
      flash[:alert] = "There was an error posting a post"
      render :new
    end
  end

  def update
    @post = Post.find_by_id(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path, notice: "Post was updated sucessfully"
    else
      flash[:alert] = "Error!"
      render :edit
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

  private

  def post_params
    params.require(:post).permit(:email, :postname, :content)
  end

end