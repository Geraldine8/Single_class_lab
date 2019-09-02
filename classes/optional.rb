class Library
  def initialize(books)
    @books = books
  end

  def books
    return @books
  end

  def get_book_by_tittle(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_details_by_tittle(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end
#==============================================
  def add_book(title)
    book = {
      title: title,
      rental_details: {
       student_name: "",
       date: ""
      }
    }
    @books.push(book)
  end

  def update_rental_details(title, student_name, date)
    book = get_book_by_tittle(title)
    book[:rental_details][:student_name] = student_name
    book[:rental_details][:date] = date
  end
end
