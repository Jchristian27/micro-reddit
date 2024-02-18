class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 5..50 }
  validates :body, presence: true, length: { in: 25..255 }
  validates :user_id, presence: true
end
