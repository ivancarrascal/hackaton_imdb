Rails.application.routes.draw do
 get '/' => "words#index"

 resources :words
 resources :scores
 resources :questions

end
