class MemeSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :top_text, :bottom_text, :width, :height, :tags
  belongs_to :user
  has_many :favorites
end
