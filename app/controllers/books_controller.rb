class BooksController < ApplicationController
 
 def new
  @book = Book.new
 end
 
 def index 
  @books = Book.all
  @user = current_user
 end






private

 def users_params
    params.require(:users).permit(:shop_name, :image, :caption)
 end
end