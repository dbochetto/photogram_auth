class UsersController < ApplicationController

	def index
    	@users = User.all
  	end

  	def show
  		@user = User.find(params[:id])
	end

	def likes
		@user = current_user
		@likes = @user.liked_photos
	end

end