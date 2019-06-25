Rails.application.routes.draw do
  root 'root#top'
  get 'home/about', to: 'root#about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :create, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :index, :edit, :update]
end
