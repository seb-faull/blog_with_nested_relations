class CommentsController < ApplicationController


  #Index
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end


  #Show
  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end


  #New
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end


  #Create
  def create

    # @post = Post.find(params[:post_id])
    # @comment = @post.comments.create(comment_params)
    # if @comment.save
    #   redirect_to @post_comment_path
    # else
    #   render :new
    # end
    
    post = Post.find(params[:post_id])
    post.comments.create(comment_params)

    redirect_to post
  end


  #Edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end


  #Update
  def update
    
    # @post = Post.find(params[:id])
    # @comment = @post.comments.create(comment_params)
    # if @comment.update(comment_params)
    #   redirect_to @post_comment_path
    # else
    #   render :edit
    # end

    post = Post.find(params[:post_id])
    comment = post.comments.find(params[:id])
    comment.update(comment_params)

    redirect_to post_comment_path
  end


  #Destroy
  def destroy
    post = Post.find(params[:post_id])
    post.comments.destroy(params[:id])

    redirect_to post
  end

  protected         
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

end
