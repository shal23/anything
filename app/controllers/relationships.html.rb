class RelationshipsController < ApplicationController


	def create

		@user = User.find(params[:relationship][:followed_id])
		current_user.follow!(@user)
		
	end

	def destroy
		@user = Relationship.find(params[:id]).followed_id
		current_user.unfollow!(@user)
		redirect_to @user

	end
end