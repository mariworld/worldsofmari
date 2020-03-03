class VideoSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :video_url
end
