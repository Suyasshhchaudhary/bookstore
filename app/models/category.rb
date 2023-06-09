class Category < ApplicationRecord
  validates_uniqueness_of :name
  has_and_belongs_to_many :books
  has_many :discounts, through: :books

end
