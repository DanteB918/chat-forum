class ForumController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
    @comment = Comment.new
  end

  def new
    @forum = Forum.new
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])

    @forum.update(forum_params)

    if @forum.save
        redirect_to forum_path(@forum.id)
      else
        render :edit
      end
  end

  def create
    # forum_params.store(:user_id, current_user.id)

# abort current_user.id
    @forum = Forum.new(forum_params)

    if @forum.save
      redirect_to forum_path(@forum.id)
    else
      render :new
    end
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.delete

    redirect_to root_path
  end

  private
    def forum_params
      params.require(:forum).permit(:title, :description, :user_id).merge(:user_id => current_user.id)
    end

end
