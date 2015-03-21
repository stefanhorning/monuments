class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :email, type: String

  validates_presence_of :email
  index({ email: 1 }, { unique: true })
end
