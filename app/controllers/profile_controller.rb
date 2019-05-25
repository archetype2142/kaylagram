class ProfileController < ApplicationController
	def new
		# @profile_pic
	end

	def index; end

	def update
	  add_to = User.find(params[:user_id]).profile_pictures.new
	  puts params[:user]['profile_picture']
	  add_to.image.attach(params[:user]['profile_picture'])
	  add_to.save!

	  redirect_to user_profile_index_path(User.find(params[:user_id]))
	end
end