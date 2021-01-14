class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :property_type, presence: true
  validates :country, presence: true
  validates :city, presence: true
end
