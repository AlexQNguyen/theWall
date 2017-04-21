class MessagesController < ApplicationController
  def index

  end

  def show
  end

  def new
  @posts = Message.all
  @users = User.find(params[:user_id])
  @com = Comment.all
  end

  def edit
  end

  def create
    @messages = Message.new(message_params)
    if @messages.save
      redirect_to "/users/#{params[:user_id]}/messages/new"
    else
      flash[:errors] = @messages.errors.full_messages
      redirect_to "/users/#{params[:user_id]}/messages/new"
    end
  end
  def delete

  end

  private
    def message_params
      params.require(:message).permit(:post, :user_id)
    end
end
