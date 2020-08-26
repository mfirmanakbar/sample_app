class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # debugger --> if want to using debug mode
  end

  def new
    @user = User.new
  end

end
