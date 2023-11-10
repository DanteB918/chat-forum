class CommentController < ApplicationController

  def create
    @comment = Comment.new(forum_params)

    if @comment.save
      redirect_to forum_path(@comment.forum_id)
    else
      redirect_to forum_path(@comment.forum_id)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete

    redirect_to root_path
  end

  private
    def forum_params
      params.require(:comment).permit(:message, :user_id, :forum_id).merge(:user_id => current_user.id)
    end
end
