class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(params[:name])
        render json: user
    end

    def show
        id = params[:id].to_i
        user = User.find_by(id)
        render json: user
    end


end
