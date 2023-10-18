class AddProfilePictureToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :profile_picture, :string
  end
end
