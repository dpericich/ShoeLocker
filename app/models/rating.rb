class Rating < ApplicationRecord
  belongs_to :product
  validates :customer, presence: true
  validates :review, presence: true
  validates :rating, presence: true, 
  numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
