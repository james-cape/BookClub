require "rails_helper"

describe "user sees all books" do
  describe "they visit /books" do
    it "displays all books" do
      book_1 = Book.create!(title: "Title 1", author: "Author 1", pages: 300, year: 1963, cover_url:"https://images-na.ssl-images-amazon.com/images/I/81HNeEElO8L.jpg")
      book_2 = Book.create!(title: "Title 2", author: "Author 2", pages: 400, year: 1970, cover_url:"https://upload.wikimedia.org/wikipedia/en/thumb/6/63/Into_the_Wild_%28book%29_cover.png/220px-Into_the_Wild_%28book%29_cover.png")

      visit '/books'

      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_2.title)
    end
  end
end
