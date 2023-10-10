class Student < ApplicationRecord
    validates :student_id,:student_name,:email, presence: true
 


end
