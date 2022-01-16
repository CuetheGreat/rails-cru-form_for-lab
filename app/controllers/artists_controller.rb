class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.find_or_create_by(artist_params(:name,:bio))
        redirect_to artist_path(@artist)
    end

    def show
        @artist = Artist.find_by(id: params[:id])
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by(id: params[:id])
        @artist.update(artist_params(:name,:bio))
        redirect_to artist_path(@artist)
    end


    private
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
    
end