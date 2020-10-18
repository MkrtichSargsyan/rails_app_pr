class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'post has been created'
    else
      redirect_to new_post_path, notice: 'there are some problems'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: 'post has been updated'
    else
      redirect_to edit_post_path(@post), notice: 'there are some problems'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: "Post deleted #{edit_post_url}"
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
