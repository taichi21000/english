class Article < ApplicationRecord
  # mount_uploader :articlecover, PicuploadUploader
  has_one_attached :articlecover
end
