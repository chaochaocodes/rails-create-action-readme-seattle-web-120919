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

  # add create method here
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    # redirected to the show page for the post user just created.
    redirect_to post_path(@post)
  end
end
