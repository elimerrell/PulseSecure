class Exam < ApplicationRecord
    has_many :student_exam_results
    has_many :students, through: :student_exam_results
end
