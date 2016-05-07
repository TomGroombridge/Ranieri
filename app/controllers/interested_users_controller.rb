class InterestedUsersController < ApplicationController

	def new
		@new_user = InterestedUser.new		
	end

	def create
		@new_user = InterestedUser.new(interested_user_params)
		if @new_user.save
			render :confirmation
		else
			render :new
		end
	end

	def confirmation
		raise @user.inspect
		@user = InterestedUser.find(params[:id])		
	end

	private

	def interested_user_params
    params.require(:interested_user).permit(:first_name, :last_name, :email)    
	end

end
