class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    # Set the content from the form
    @movie = Movie.new(movies_params)
    @movie.save
    redirect_to movies_path
  end

  private

  def movies_params
  params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
