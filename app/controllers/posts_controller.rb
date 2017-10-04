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

    @post = Post.create(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end

  end


  #Edit
  def edit
    @post = Post.find(params[:id])
  end


  #Update
  def update
    
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post 
    else
      render :edit
    end

  end


  #Delete
  def destroy
    Post.destroy(params[:id])
    redirect_to posts_url
  end

  protected
  def post_params
    params.require(:post).permit(:title, :name, :body)
  end

end
