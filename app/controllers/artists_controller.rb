class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist = Artist.save
    redirect_to artist_path(@artist)
  end

  def show

  end

  def edit

  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = Artist.destroy
    redirect_to artists_path
  end


  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
      params.require(:artist).permit(:name, :description)
  end
end
