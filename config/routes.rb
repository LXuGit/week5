MoviesApp::Application.routes.draw do

  # ----------------------
  # Routes from last week:

  root "movies#index"

  get "/movies" => 'movies#index'
  get "/movies/:movie_id" => 'movies#show'


  # --------------------
  # New routes this week:

  get "/movies/new" => 'movies#new'
  get "/movies/delete" => 'movies#toast'
  get "/movies/create" => 'movies#create'



end
