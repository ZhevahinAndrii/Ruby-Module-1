require 'minitest/autorun'
require_relative 'task2.rb'

class TestDB < Minitest::Test
    def test_by_faculty
      db = StudentsBase.new
      db.add_student(Student.new(1, 'Smith', 'John', 'A', 1990, '123 Main St', '123-456-7890', 'Engineering', 2, 'E101'))
      db.add_student(Student.new(2, 'Johnson', 'Sarah', 'B', 1991, '456 Elm St', '987-654-3210', 'Science', 1, 'S201'))
      db.add_student(Student.new(3, 'Brown', 'Michael', 'C', 1992, '789 Oak St', '555-123-4567', 'Engineering', 3, 'E301'))
      res = db.students_by_faculty("Engineering")
      assert_equal res.map{|student| student.id},[1,3]
    end

    def test_by_faculty_and_course
      db = StudentsBase.new
      db.add_student(Student.new(1, 'Smith', 'John', 'A', 1990, '123 Main St', '123-456-7890', 'Engineering', 2, 'E101'))
      db.add_student(Student.new(2, 'Johnson', 'Sarah', 'B', 1991, '456 Elm St', '987-654-3210', 'Science', 1, 'S201'))
      db.add_student(Student.new(3, 'Brown', 'Michael', 'C', 1992, '789 Oak St', '555-123-4567', 'Engineering', 3, 'E301'))
      res = db.students_by_faculty_and_course("Engineering",2)
      assert_equal res.map{|student| student.id} , [1]
    end

    def test_born_after
      db = StudentsBase.new
      db.add_student(Student.new(1, 'Smith', 'John', 'A', 1990, '123 Main St', '123-456-7890', 'Engineering', 2, 'E101'))
      db.add_student(Student.new(2, 'Johnson', 'Sarah', 'B', 1991, '456 Elm St', '987-654-3210', 'Science', 1, 'S201'))
      db.add_student(Student.new(3, 'Brown', 'Michael', 'C', 1992, '789 Oak St', '555-123-4567', 'Engineering', 3, 'E301'))
      res = db.students_born_after(1990)
      assert_equal res.map{|student| student.id},[2,3]
    end
    def test_students_in_group
        db = StudentsBase.new
        db.add_student(Student.new(1, 'Smith', 'John', 'A', 1990, '123 Main St', '123-456-7890', 'Engineering', 2, 'E101'))
        db.add_student(Student.new(2, 'Johnson', 'Sarah', 'B', 1991, '456 Elm St', '987-654-3210', 'Science', 1, 'S201'))
        db.add_student(Student.new(3, 'Brown', 'Michael', 'C', 1992, '789 Oak St', '555-123-4567', 'Engineering', 3, 'E301'))
        res = db.students_in_group('E101')
        assert_equal res.map{|student| student.id}, [1]
    end
end