class BooksController < ApplicationController
 
 def new
  @book = Book.new
  @books = Book.all
  @user = current_user
 end
 
 def create
  @book = Book.new(book_params)
  @book.save
    redirect_to book_path(current_user)
 end
 
 def index 
  @book = Book.new
  @books = Book.all
  @user = current_user
 end

 def show
  @books = Book.all
 end




private
 def book_params
    params.require(:book).permit(:title, :body)
 end
 
end