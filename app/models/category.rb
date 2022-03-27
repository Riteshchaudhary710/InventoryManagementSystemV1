# Stores information about categories
class Category < ApplicationRecord
  validates :category_name, presence: true
end
