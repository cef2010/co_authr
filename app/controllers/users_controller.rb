class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end

  private
  def user_params
    params.require(:user).permit({ turn_ons: [] }, { turn_offs: [] }, :about_me)
  end

end
