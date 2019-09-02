require('minitest/autorun')
require('minitest/rg')
require_relative('../optional.rb')

class TestOptional < MiniTest::Test

  def setup

    @books = [
      {
        title: "the_raven",
        rental_details: {
          student_name: "Mary",
          date: "22/01/2019"
        }
      },
      {
        title: "the_black_cat",
        rental_details: {
          student_name: "Jose",
          date: "20/08/2019"
        }
      },

      {
        title: "the_golden_bug",
        rental_details: {
          student_name: "Anna",
          date: "20/05/2018"
        }
      }

    ]
    @library = Library.new(@books)
  end

  def test_get_books
    assert_equal(@books, @library.books)
  end

  def test_get_book_by_tittle
    assert_equal(@books[0], @library.get_book_by_tittle("the_raven"))
  end

  def test_get_rental_details_by_tittle
    assert_equal(@books[0][:rental_details], @library.get_rental_details_by_tittle("the_raven"))
  end

  def test_add_book
    new_book = {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "",
       date: ""
      }
    }
    @library.add_book("lord_of_the_rings")
    assert_equal(new_book, @library.get_book_by_tittle("lord_of_the_rings"))
  end

  def test_update_rental_details
    rental_details = {
      student_name: "Louis",
      date: "02/25/2019"
    }
    @library.update_rental_details("the_black_cat", "Louis", "02/25/2019")
    assert_equal(rental_details, @library.get_rental_details_by_tittle('the_black_cat'))
  end
end
