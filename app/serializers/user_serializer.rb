class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :memes
  has_many :favorites
end
