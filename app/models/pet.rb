class Pet < ApplicationRecord
  validates :name, presence: true
  validates :race, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :height, presence: true

  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'

  has_many :appoinments, dependent: :destroy
  has_many :caregivers, through: :appoinments, source: :pet
end
