require 'sidekiq/web'
require 'sidekiq/cron/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
  root to: 'welcome#index'
  resources :tv_series do
    member do
      post :add_to_favorites
      delete :remove_from_favorites
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
