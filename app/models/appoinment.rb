class Appoinment < ApplicationRecord
  validates :start, presence: true
  validates :end, presence: true

  belongs_to :user
  belongs_to :pet
end
