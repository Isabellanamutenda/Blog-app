class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.order(created_at: :desc).where(user_id: @user.id)
  end
end
