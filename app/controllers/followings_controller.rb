class FollowingsController < ApplicationController
  include FollowingsHelper

  def create
    @following = current_user.followings.new(followed_id: params[:user_id])
    @user = User.find_by_id!(user_params[:user_id])
    if @following.save
      flash[:notice] = "You are following #{User.find(params[:user_id]).fullname}"
    else
      flash[:alert] = 'Something went wrong ...'
    end
    redirect_to user_path(@user.username)
  end

  def destroy
    @user = User.find_by_id!(user_params[:user_id])
    follow = Following.where(followed_id: @user.id).where(follower_id: current_user.id).first
    follow&.destroy
    redirect_to user_path(@user.username), alert: "You unfollowed #{@user.fullname.upcase}"
  end
end
