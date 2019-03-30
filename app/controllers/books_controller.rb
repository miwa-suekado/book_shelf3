class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.page(params[:page]).per(4)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "書籍を登録しました。"
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    
    if @book.update(book_params)
      redirect_to @book, notice: "書籍を更新しました。"
    else
      render :edit
    end
  end
  
  def destroy
    
    @book.destroy
    redirect_to books_path, notice: "書籍を削除しました。"
  end

  private

  def book_params
    params.require(:book).permit(:title, :price, :publish_date,
                                :description, :new_image, :category_id)
  end
  def set_book
    @book = Book.find(params[:id])
  end
end
