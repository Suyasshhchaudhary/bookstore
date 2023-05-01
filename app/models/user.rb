class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :books, dependent: :destroy
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 105 },uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
  validates :gender, presence: true, inclusion: { in: %w(male female), message: "must be male or female" }
  validates :phone, presence: true, format: { with: /\A\+91\d{10}\z/, message: "must be in the format +91XXXXXXXXXX" }

end
