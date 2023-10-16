class Student < ApplicationRecord
    belongs_to :student
    validates :student_id,:student_name,:email, presence: true



end
