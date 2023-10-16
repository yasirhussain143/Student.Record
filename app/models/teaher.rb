class Teacher < ApplicationRecord
  has_many :students
 validates :name, presence:true, length:{minmum: 3, maximum: 12}
 validates :email, presence:true, length:{ maximum: 90}
end
