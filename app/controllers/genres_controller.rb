class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(strong_params)
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find_by(params[:id])
    end

    def edit
        @genre = Genre.find_by(params[:id])
    end

    def update
        @genre = Genre.find_by(params[:id])
        @genre.update(strong_params)
        redirect_to genre_path(@genre)
    end

    private
    def strong_params
        params.require(:genre).permit(:name)
    end
end
