require 'rspec'
# write your code in a file named student
require './lib/student'

describe Student do
  it 'is an instance of student' do
    # since a student object is being created from a Student class,
    # write a class named Student

    # ALSO - since an argument is being passed to Student, the initialize method needs to accept one
    student = Student.new('Penelope', 12)
    expect(student).to be_a Student
  end

  it 'has a name' do
    student = Student.new('Penelope', 12)
    # since we need to call the name attribute and get back the string that was passed in,
    # we need an attr_reader for the name attribute
    expect(student.name).to eq 'Penelope'
  end
  #added below  
# it 'has a dynmanic age' do
#   student = Student.new('Penelope',12)
#   expect(student.age).to eq 12
# end
end
