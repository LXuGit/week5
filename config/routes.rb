MoviesApp::Application.routes.draw do

  # ----------------------
  # Routes from last week:

  root "movies#index"

  get "/movies" => 'movies#index'
  get "/movies/new" => 'movies#new'
  get "/movies/create" => 'movies#create'
  get "/movies/delete/:movie_id" => 'movies#toast'
  get "/movies/:movie_id" => 'movies#show'


  # --------------------
  # New routes this week:




end
