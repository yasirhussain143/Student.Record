class Student < ApplicationRecord
    belongs_to :student
    has_one_attached :document
    validates :student_id,:student_name,:email, presence: true
    validate :validate_document_content_type

    def validate_document_content_type
      if document.attached? && !document.content_type.in?(%w(application/pdf image/jpeg image/png))
        errors.add(:document, 'must be a valid document format (PDF, JPEG, or PNG)')
      end
    end




end
