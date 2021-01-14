class Room < ApplicationRecord
  belongs_to :user

  validates :property_type, presence: true
  validates :country, presence: true
  validates :city, presence: true
end
