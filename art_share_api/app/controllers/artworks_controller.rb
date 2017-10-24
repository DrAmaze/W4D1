class ArtworksController < ApplicationController
  def index
    if params[:user_id]
      render json: Artwork.find_by(artist_id: params[:user_id])
    else
      render json: Artwork.all
    end
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    if artwork
      render json: artwork
    else
      render json: :not_found
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork
      if artwork.update(artwork_params)
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    else
      render plain: "no artwork to update"
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    if artwork
      if artwork.destroy
        render json: artwork
      else
        render json: :unprocessable_entity
      end
    else
      render plain: "no artwork by that reference to destroy"
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end
end
