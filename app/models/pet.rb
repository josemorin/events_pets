class Pet < ApplicationRecord
  validates :name, presence: true
  validates :race, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :height, presence: true

  belongs_to :user
end
