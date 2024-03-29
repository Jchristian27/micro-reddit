class User < ApplicationRecord
  has_many :posts
  has_many :comments

  before_save { self.email = email.downcase }
  before_save { self.username = username.downcase }
  validates :username, presence: true, length: { maximum: 50 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
                    length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { in: 8..16 }
end
