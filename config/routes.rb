Rails.application.routes.draw do
 get '/' => "words#index"
 get '/reload' => "words#reload_movies"


 resources :words
 resources :scores
 resources :questions

end
