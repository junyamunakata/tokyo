class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to posts_path
  end

  def edit
  end

  def login
    @user = User.find(params[email: params[:email], password: params[:password]])
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
