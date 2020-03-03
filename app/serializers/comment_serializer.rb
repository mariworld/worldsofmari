class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user
  # belongs_to :user
end
