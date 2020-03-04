class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, only: [:id, :user, :message]
    end

    def create
        comment = Comment.create(comments_params)
        render json: comment
    end

    def show
        comment = Comment.find_by(id: params[:id])
        if comment
            render json: { id: comment.id, message: comment.message, user: comment.user}
        else
            render json: { message: 'comment not found' }
        end
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
    end

    private
    def comments_params
        params.require(:comment).permit(:user_id,:message,:video_id)
    end
    
end
