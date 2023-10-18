class Teacher < ApplicationRecord
  has_one_attached :profile_picture
  has_many :students
 validates :name, presence:true, length:{minimum: 3, maximum: 12}
 validates :email, presence:true, length:{ maximum: 90}

   validate :validate_profile_picture_content_type

  def validate_profile_picture_content_type
    if profile_picture.attached? && !profile_picture.content_type.in?(%w(image/jpeg image/png image/gif))
      errors.add(:profile_picture, 'must be a valid image format (JPEG, PNG, or GIF)')
    end
  end
  # ...


  # ...

end
