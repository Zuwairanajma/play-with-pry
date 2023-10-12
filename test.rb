require_relative 'classroom'
require_relative 'student'

# Example Usage:

classroom_a = Classroom.new('Class A')
classroom_b = Classroom.new('Class B')

student1 = Student.new(18, classroom_a, 'John')
student2 = Student.new(20, classroom_b, 'Janet')

classroom_a.add_student(student1)
classroom_b.add_student(student2)

puts "Classroom A Students: #{classroom_a.students.map(&:name).join(', ')}"
puts "Classroom B Students: #{classroom_b.students.map(&:name).join(', ')}"

puts "#{student1.name} is in #{student1.classroom&.label}"
puts "#{student2.name} is in #{student2.classroom&.label}"
# test.rb
require 'pry'

class A
  def hello() puts "hello world!" end
end
def goodbye() 
    puts "goodbye cruel world"
    end

a = A.new


# start a REPL session
binding.pry

# program resumes here (after pry session)
puts "program resumes here."