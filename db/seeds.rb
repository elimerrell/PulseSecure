firstNames = ('A'..'Z').to_a
(1..26).map{ |i| Student.find_or_create_by(firstName: firstNames[i-1], lastName: i.to_s) }
 
(1..10).map { |i| Exam.find_or_create_by(title: 'Exam ' + i.to_s, totalMarks: 100) }
 
 
Exam.all.each do |exam|
  index = 1
  Student.all.each do |student|
	score = (index * 10) % 101
    StudentExamResult.find_or_create_by(student: student, exam: exam, marksObtained: score)
	index += 1
  end
end