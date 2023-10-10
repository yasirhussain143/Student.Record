class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :student_name
      t.string :email
       



      t.timestamps
    end
  end
end
