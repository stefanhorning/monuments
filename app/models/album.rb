class Album
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :public, type: Boolean, default: false
  has_many :photos

  validates_presence_of :name
  belongs_to :user
  index({ name: 1, user_id: 1 }, { unique: true })
end
