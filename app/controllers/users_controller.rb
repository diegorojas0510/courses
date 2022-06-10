class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect_to user_path(@users)
    else
      @errors = @users.errors.full_messages
      render 'users/new'
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
