class Article < ApplicationRecord
  mount_uploader :articlecover, PicuploadUploader
end
