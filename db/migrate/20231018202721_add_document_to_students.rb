class AddDocumentToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :document, :string
  end
end
