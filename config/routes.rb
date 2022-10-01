Rails.application.routes.draw do
  
root to: "homes#top"

get 'about' => 'homes#about'

  devise_for :users
  
  resources :books, only: [:new, :index, :show, :destroy]
  resources :users, only: [:edit, :show]
  
end
