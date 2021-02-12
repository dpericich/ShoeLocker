class Product < ApplicationRecord
    has_many :ratings
    validates :title, presence: true, length: { minimum: 6, 
        too_short: "You need at least 6 letters for your title!" }
    validates :description, presence: true
    validates :gender, presence: true
    validates :price, presence: { message: "We can't just give these away for free!"}, numericality: true
end
