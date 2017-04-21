class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @comments = Comment.new(comment_params)
    if @comments.save
      redirect_to "/users/#{@comments.user_id}/messages/new"
    else
      flash[:errors] = @comments.errors.full_messages
      redirect_to :back
    end
  end
  private
    def comment_params
      params.require(:comment).permit(:comment, :message_id, :user_id)
    end
end
