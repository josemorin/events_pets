class User < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  has_many :appoinments
  has_many :pets, through: :appoinments
end
