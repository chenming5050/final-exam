class CreateStudentScores < ActiveRecord::Migration[5.0]
  def change
    create_table :student_scores do |t|
      t.string :name
      t.string :stu_no
      t.integer :score

      t.timestamps
    end
  end
end
