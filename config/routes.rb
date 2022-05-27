Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "movies#index"

  resources :movies, except: :index
  resources :lists
  resources :bookmarks
end
