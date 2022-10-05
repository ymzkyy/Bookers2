class UsersController < ApplicationController

  def index 
  @book = Book.new
  @books = Book.all
  @user = current_user
 end

  def edit
  end

  def show
  end
end
