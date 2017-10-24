class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> {order(created_at: :desc) } # Order of creation by descending order (newest to oldest)
  validates :user_id, presence: true
  validates :content, presence:true, length: {maximum: 140}
end
