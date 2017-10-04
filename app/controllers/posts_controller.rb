class PostsController < ApplicationController

  #Index
  def index
    @posts = Post.all
  end


  #Show
  def show
    @post = Post.find(params[:id])
  end


  #New
  def new
    @post = Post.new
  end


  #Create
  def create
    new_post = Post.create(post_params)
    new_post.save

    redirect_to new_post
  end


  #Edit
  def edit
    @post = Post.find(params[:id])
  end


  #Update
  def update
    post = Post.find(params[:id])
    post.update(post_params)

    redirect_to post
  end


  #Delete
  def destroy
    Post.destroy(params[:id])
    redirect_to posts_url
  end

  protected
  def post_params
    params.require(:post).permit(:title, :name, :blog)
  end

end
