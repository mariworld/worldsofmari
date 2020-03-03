class VideosController < ApplicationController
    def index
        videos = Video.all
        render json: videos 
    end

    def show
        video = Video.find_by(id: params[:id])
        if video
            render json: { id: video.id, title: video.title, video_url: video.video_url, comments: video.comments}
        else
            render json: { message: 'video not found' }
        end
    end
end
