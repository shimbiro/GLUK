class UsersController < ApplicationController
	# before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end
	def show

	end

	def new
		@user = User.new
	end

	def edit 

	end

	