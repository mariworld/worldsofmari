class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, only: [:id, :user, :message]
    end
end
