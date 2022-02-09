class Product < ApplicationRecord
  validates :upc, uniqueness: true
end
