class Student < ApplicationRecord
    has_many :student_exam_results
    has_many :exams, through: :student_exam_results
end
