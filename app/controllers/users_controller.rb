class UsersController < ApplicationController

  def index 
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
  @book = Book.find(params[:id])
  @books = Book.all
  @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path  
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
