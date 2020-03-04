class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :video_id
  belongs_to :user
  belongs_to :video
end
