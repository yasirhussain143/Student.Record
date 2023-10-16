class AddTeacherIdToStudent < ActiveRecord::Migration[7.0]
  def change

    add_column :students, :teacher_id, :int
  end
end
