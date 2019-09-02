require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudentFile < MiniTest::Test

  def setup
    @codeclan_student = CodeClanStudent.new("Claire", "G10")
  end

  def test_codeclan_student_name
    assert_equal("Claire", @codeclan_student.name)
  end

  def test_codeclan_student_cochort
    assert_equal("G10", @codeclan_student.cohort)
  end

 def test_set_codeclan_student_name
   @codeclan_student.set_name("Mary")
   assert_equal("Mary", @codeclan_student.name)
 end

 def test_set_codeclan_student_cohort
   @codeclan_student.set_cohort("E19")
   assert_equal("E19", @codeclan_student.cohort)
 end

 def test_talk
  assert_equal("I can talk", @codeclan_student.talk)
 end

def test_student_favourite_language
  assert_equal("I love Python!", @codeclan_student.student_favourite_language("Python"))
end


end
