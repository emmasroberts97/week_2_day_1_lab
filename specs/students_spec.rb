require('minitest/autorun')
require('minitest/reporters')
require_relative('../student.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudents < MiniTest::Test

  def setup
    #PART A
    @new_student = Student.new("Emma", "G17")
  end

  #TEST PART A GETTERS
  def test_student_name
    assert_equal("Emma", @new_student.student_name)
  end

  def test_cohort_name
    assert_equal("G17", @new_student.cohort_name)
  end

  #TEST PART A SETTERS
  def test_set_student_name
    @new_student.set_student_name("Jim")
    assert_equal("Jim", @new_student.student_name)
  end

  def test_set_student_cohort
    @new_student.set_student_cohort("G18")
    assert_equal("G18", @new_student.cohort_name)
  end

  def test_student_talk
    value = @new_student.student_talk()
    assert_equal("My name is Emma", value)
  end

  def test_favourite_language
    value = @new_student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", value)
  end

end
