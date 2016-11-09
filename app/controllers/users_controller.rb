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

	def create
		@user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end
def user_params
      params.require(:user).permit(:name, :email)
  end
end