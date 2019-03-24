class Picture < ApplicationRecord
  belongs_to :author
  mount_uploader :image, ImageUploader
end
