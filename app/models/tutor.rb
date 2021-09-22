class Tutor < ApplicationRecord

  belongs_to :course

  validates :name, :email, presence: true

end
