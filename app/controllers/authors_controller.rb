class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @alternate_authors = Author.alternate_authors(@author)
  end

  def destroy
    @author = Author.find(params[:id])
    @author.books.each do |book|
      book.authors.each do |book_author|
        if book_author.books.count == 1
          book_author.destroy
        end
      end
      book.destroy
    end
    redirect_to books_path
  end
end
