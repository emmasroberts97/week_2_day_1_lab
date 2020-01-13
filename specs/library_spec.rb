require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup
   @books = Library.new(
     [
     {
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/03/20"
      }
     },
     {
      title: "harry_potter",
      rental_details: {
        student_name: "Emma",
        date: "01/03/20"
      }
     }
     ]
   )
  end

  def test_get_books
    assert_equal([
    {
     title: "lord_of_the_rings",
     rental_details: {
     student_name: "Jeff",
     date: "01/03/20"
     }
    },
    {
     title: "harry_potter",
     rental_details: {
       student_name: "Emma",
       date: "01/03/20"
     }
    }
    ], @books.get_books)
  end

  def test_return_details
    value = @books.return_details("harry_potter")
    assert_equal({
     title: "harry_potter",
     rental_details: {
       student_name: "Emma",
       date: "01/03/20"
     }
    }, value)
  end

  def test_return_rental_details
    value = @books.return_rental_details("lord_of_the_rings")
    assert_equal({
      student_name: "Jeff",
      date: "01/03/20"
    }, value)
  end

  def test_add_book_to_list
    value = @books.add_book_to_list("a_separate_peace")
    assert_equal(3, value)
  end

  def test_update_rental_details
    value = @books.update_rental_details("a_separate_peace", "Emma", "01/03/2020")
    assert_equal({
      student_name: "Emma",
      date: "01/03/20"
   }, value)
 end
end
