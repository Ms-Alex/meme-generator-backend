class Api::V1::MemesController < ApplicationController

    before_action :find_meme, only: [:show, :update, :destroy]

    def index
        @memes = Meme.all
        render json: @memes
    end

    def create
        @meme = Meme.new(meme_params)
        if @meme.save
            render json: @memes, status: :accepted
        else
            render json: { errors: @meme.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def show
        render json: @meme
    end

    def update
         @meme.update(meme_params)
        if @meme.save
            render json: @meme, status: :accepted
        else
            render json: { errors: @meme.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @meme.destroy
        render json: @memes
    end


    private

    def meme_params
        params.permit(:img_url, :user_id, :top_text, :bottom_text, :width, :height, :tags)
    end

    def find_meme
        @meme = Meme.find(params[:id])
    end

end
