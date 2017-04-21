class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect_to "/users/#{@users.id}/messages/new"
    else
      flash[:errors] = @users.errors.full_messages
      redirect_to '/users/new'
    end
  end
  def delete
    redirect_to '/users/new'
  end
  private
    def user_params
      params.require(:user).permit(:username)
    end
end
