class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # debugger --> if want to using debug mode
  end

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the Sample App!'
      return redirect_to @user
    end
    render 'new'
    # if @user.save
    #   flash[:success] = 'Welcome to the Sample App!'
    #   redirect_to @user
    # else
    #   render 'new'
    # end
  end

  private

  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

end
