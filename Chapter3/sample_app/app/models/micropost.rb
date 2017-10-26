class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> {order(created_at: :desc) } # Order of creation by descending order (newest to oldest)
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence:true, length: {maximum: 140}
  validate :picture_size #validate, not validates, to call a custom validation

  private
    #Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
