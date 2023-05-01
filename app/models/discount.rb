class Discount < ApplicationRecord
  has_and_belongs_to_many :categories_discounts
  validates :name, presence: true,  length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :name

end
