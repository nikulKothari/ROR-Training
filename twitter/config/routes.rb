Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  resources :relationships, only: [:create, :destroy]
  resources :tweets, only: [:create, :index]
  resources :users, only: :show do
    collection do
      get '/profile', to: 'users#profile'
    end
  end
  
end
