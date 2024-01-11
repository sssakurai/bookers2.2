Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:show, :edit, :index, :update, :create, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  root to: 'homes#top'

  get "home/about" => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
