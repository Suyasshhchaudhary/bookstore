class Book < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  validates :author, presence: true
  validates :price, format: { with: /\A\d+\.\d{0,2}\z/, message: "must contain 2 digits after the decimal point" }
  validates :title, uniqueness: {scope: :user_id}

end
