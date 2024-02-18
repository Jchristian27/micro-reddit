class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment, presence: true, length: { in: 5..255 }
  validates :user_id, presence: true
  validates :post_id, presence: true
end
