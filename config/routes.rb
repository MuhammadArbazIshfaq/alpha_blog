Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "pages#home"

  get "about", to: "pages#about"

  resources :articles do
    resources :comments, only: [:create, :destroy]
    resources :ratings, only: [:create, :destroy]
  end

  get "signup", to: "users#new"
  resources :users, except: [:new]

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :categories, except: [:destroy]
end
