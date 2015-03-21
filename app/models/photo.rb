class Photo
  include Mongoid::Document
  belongs_to :album
end
