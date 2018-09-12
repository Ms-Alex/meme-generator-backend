class Api::V1::FavoritesController < ApplicationController

    before_action :find_favorite, only: [:show, :destroy]

    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: @favorites, status: :accepted
        else
            render json: { errors: @favorite.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def show
        render json: @favorite
    end

    def destroy
        @favorite.destroy
        render json: @favorites
    end


    private

    def favorite_params
        params.permit(:user_id, :meme_id)
    end

    def find_favorite
        @favorite = Favorite.find(params[:id])
    end

end
