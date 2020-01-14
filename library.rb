class Library

  # attr_accessor :library

  def initialize(array)
    @library = array
  end

 #GETTERS
  def get_books
    return @library
  end

  def return_details(book_name)
    for book in @library
      if book[:title] == book_name
        return book
      end
    end
  end

  def return_rental_details(book_name)
    for book in @library
      if book[:title] == book_name
        return book[:rental_details]
      end
    end
  end

  def add_book_to_list(book_name)
    @library.push({
      title: book_name,
      rental_details: {
      student_name: "",
      date: ""
      }
     })
     return @library.count
  end

  def update_rental_details(book_name, student_name, date_to_be_returned)
    for book in @library
      if book[:title] == book_name
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date_to_be_returned
      end
    end
    return book[:rental_details]
  end
end
