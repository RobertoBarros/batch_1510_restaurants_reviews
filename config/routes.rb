Rails.application.routes.draw do




  resources :restaurants do
    get 'top', on: :collection
    get 'chef', on: :member
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy




  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "restaurants#index"
end
