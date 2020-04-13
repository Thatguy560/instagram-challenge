class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid? 
      redirect_to pictures_url
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
    session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
