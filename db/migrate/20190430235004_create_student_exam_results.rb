class CreateStudentExamResults < ActiveRecord::Migration[5.2]
  def change
    create_table :student_exam_results do |t|
      t.integer :student_id
      t.integer :exam_id
      t.integer :marksObtained

      t.timestamps
    end
  end
end
