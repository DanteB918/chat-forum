class CommentController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(forum_params)

    if @comment.save
      redirect_to forum_path(@comment.id)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete

    redirect_to root_path
  end

  private
    def forum_params
      params.require(:comment).permit(:message, :user_id).merge(:user_id => current_user.id)
    end
end
