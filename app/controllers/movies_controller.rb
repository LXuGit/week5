class MoviesController < ApplicationController

  def index
    # render 'index'
    @movies = Movie.all.order("year desc")
  end

  def show
    # Route pattern: /movies/:movie_id
    # Actual url: /movies/1
    # What was in the :movie_id placeholder position?
    the_movie_id = params["movie_id"]

    @movie = Movie.find_by :id => the_movie_id

    render 'show'
  end

  def toast
    the_movie_id = params["movie_id"]

    m = Movie.find_by(:id => the_movie_id)
    m.destroy

    # TO DO: delete the movie from the database
    redirect_to "/movies"
  end

  def new

  end

  def create
    m = Movie.new
    m.title = params["title"]
    m.year = params["year"]
    m.plot = params["plot"]
    m.image_url = params["poster_url"]
    m.save
    redirect_to "/movies"
  end














end
