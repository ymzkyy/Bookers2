class BooksController < ApplicationController
 
 def new
  @book = Book.new
 end
 
 def index  
 end




def create
    @users = User.new(user_params)
    @users.user_id = current_user.id
    @users.save
    redirect_to user_path
end

private

 def users_params
    params.require(:users).permit(:shop_name, :image, :caption)
 end
end