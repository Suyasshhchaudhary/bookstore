class CategoriesDiscount < ApplicationRecord
  belongs_to :category
  belongs_to :discount
end
