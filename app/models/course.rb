class Course < ApplicationRecord

  has_many :tutors

  validates :title, presence: true

  accepts_nested_attributes_for :tutors, :allow_destroy => true
end
