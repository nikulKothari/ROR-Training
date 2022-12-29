Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  resources :tv_shows do
    member do
      post :add_to_favorites
      delete :remove_from_favorites
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
