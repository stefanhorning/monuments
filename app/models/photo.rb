class Photo
  include Mongoid::Document
  belongs_to :album

  mount_uploader :image, PhotoUploader 
end
