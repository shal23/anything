class HomeController < ApplicationController
  def index
  	
    @users = User.all
    @groups = Group.all
    
    if user_signed_in?
     if current_user.user_profile
		@user_profile = UserProfile.find(current_user.user_profile)
end
    end
  end
end