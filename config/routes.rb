Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients, only: [:index]
  resources :recettes, only: [:index]
  resources :menus, only: [:new, :create]
  get "/ta_liste", to: "menus#liste"
end
