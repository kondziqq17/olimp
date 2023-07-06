class Property < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :number_of_bedrooms, presence: true

  belongs_to :user
end
