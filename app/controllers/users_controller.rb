class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def link_to_users
		
	end

	
end
