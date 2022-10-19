class BooksController < ApplicationController
before_action :correct_user, only: [:edit, :update]
 def new
  @book = Book.new
 end


 def create
    @user = current_user
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
     flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      render :index
    end
 end

 def index
   @book = Book.new
   @user = current_user
 end

 def show
  @book = Book.find(params[:id])
  @books = Book.all
  @user = @book.user
 end

 def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
     flash[:not] = "You have updated book successfully."
     redirect_to book_path(@book.id)
    else
      render :edit
    end
 end

 def edit
    @book = Book.find(params[:id])

 end



 def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
 end



private
 def book_params
    params.require(:book).permit(:title, :body, :profile_image)
 end


def correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(books_path) unless @user == current_user
end
end
