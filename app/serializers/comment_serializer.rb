class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :video_id, :username, :date
  # belongs_to :user
  belongs_to :video

  def username
    object.user.name
  end

  def date
    object.created_at.strftime("%I:%M%p ~ %m/%d/%Y") 
  end

  # def dater

  # end

end
