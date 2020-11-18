Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants , only: [:index, :show, :new, :create] do
    resources :reviews , only: [:create, :new]
  end

  # get    "restaurants",          to: "restaurants#index"

  # get    "restaurants/new",      to: "restaurants#new", as: :new_restaurant
  # post   "restaurants",          to: "restaurants#create"

  # get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

  # get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch  "restaurants/:id",      to: "restaurants#update"


  # get    "reviews",          to: "reviews#index"
  
  # get    "reviews/new",      to: "reviews#new", as: :new_reviews
  # post   "reviews",          to: "reviews#create"
end