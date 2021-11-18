Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to:'restaurants#index', as: :restaurants
  # get 'restaurants/new', to:'restaurants#new', as: :new_restaurant
  # post 'restaurants', to:'restaurants#create'
  # get 'restaurants/:id', to:'restaurants#show', as: :restaurant
  # get 'restaurants/:restaurant_id/reviews/new', to:'reviews#new', as: :new_review
  # post 'restaurants/:restaurant_id/reviews', to:'reviews#create'
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create, :new]
  end
end
