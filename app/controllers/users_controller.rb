class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user.users.find(params[:id])
    @posts = @user.recent_posts
  end
end
