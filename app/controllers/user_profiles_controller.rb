class UserProfilesController < ApplicationController
before_filter :redirect_cancel, only: [:create, :update]
before_action :find_user_profiles, only: [:show, :edit, :update, :destroy]

  def new
  	@user_profile = current_user.build_user_profile
  end

  def create
  	@user_profile = current_user.build_user_profile(user_profile_params)

  	if @user_profile.save
  		flash[:notice] = "welcome #{@user_profile.name}"
  		redirect_to @user_profile
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update

  	if @user_profile.update_attributes(user_profile_params)
  		flash[:notice] = "profile is updated"
  		redirect_to @user_profile
  	else
  		render :edit
  	end

  end

  def destroy
  	
  end

  private

  def user_profile_params
  	params.require(:user_profile).permit(:name, :location, :bio, :avatar)
  end

  def find_user_profiles
  	@user_profile = UserProfile.find(params[:id])
  end

  def redirect_cancel
    redirect_to user_profile_path if params[:cancel]
  end
end
