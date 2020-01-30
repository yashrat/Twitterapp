class UsersController < ActionController::Base
# prepend_before_filter :require_no_authentication, :only => [:index]
before_action :authenticate_user!

	def index
		@users = User.all
	end

	def create_follower
		user = User.find_by_id(params[:id])
		user.active_relationships.create!(followed_id:params[:follwed_id])
		respond_to do |format|
      format.html { redirect_to users_path, notice: 'followed successfully.' }
    end
	end
end
