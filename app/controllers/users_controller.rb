class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # debugger --> if want to using debug mode
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # handle succces
    else
      render new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

end
