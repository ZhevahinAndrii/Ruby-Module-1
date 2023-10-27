
class Student
  attr_accessor :id, :last_name, :first_name, :middle_name, :birthdate, :address, :phone, :faculty, :course, :group

  def initialize(id, last_name, first_name, middle_name, birthdate, address, phone, faculty, course, group)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @middle_name = middle_name
    @birthdate = birthdate
    @address = address
    @phone = phone
    @faculty = faculty
    @course = course
    @group = group
  end

  def to_s
    "ID: #{@id}, Surname: #{@last_name}, Name: #{@first_name}, Middle Name: #{@middle_name}, Birthyear: #{@birthdate}, Adress: #{@address}, Telephone: #{@phone}, Faculty: #{@faculty}, Course: #{@course}, Group: #{@group}"
  end
end

class StudentsBase
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def students_by_faculty(faculty)
    @students.select { |student| student.faculty == faculty }
  end

  def students_by_faculty_and_course(faculty, course)
    @students.select { |student| student.faculty == faculty && student.course == course }
  end

  def students_born_after(year)
    @students.select { |student| student.birthdate > year }
  end

  def students_in_group(group)
    @students.select { |student| student.group == group }
  end

  def print_students(student_list)
    student_list.each { |student| puts student.to_s }
  end
end


