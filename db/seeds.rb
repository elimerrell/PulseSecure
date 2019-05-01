require 'faker'

puts 'creating students'
26.times do 
    Student.create(
        firstName: Faker::Name.first_name, 
        lastName: Faker::Name.last_name,    
    )
end 

# firstNames = ('A'..'Z').to_a
# (1..26).map{ |i| Student.find_or_create_by(firstName: firstNames[i-1], lastName: i.to_s) }
puts 'creating exams'
(1..10).map { |i| Exam.find_or_create_by(title: 'Exam ' + i.to_s, totalMarks: 100) }
 
puts 'creating student exam results'
Exam.all.each do |exam|
  index = 1
  Student.all.each do |student|
    StudentExamResult.find_or_create_by(student: student, exam: exam, marksObtained: rand(50..100))
	index += 1
  end
end