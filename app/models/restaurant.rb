class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :rating, presence: true
end
