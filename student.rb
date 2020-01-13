# PART A
class Student
  def initialize(input_student, input_cohort)
    @student = input_student
    @cohort = input_cohort
  end
  #GETTERS
  def student_name()
    return @student
  end
  def cohort_name()
    return @cohort
  end
  #SETTERS
  def set_student_name(new_name)
    @student = new_name
  end
  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk
    if @student == "Emma"
      return "My name is Emma"
    end
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end 


end
