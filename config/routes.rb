Rails.application.routes.draw do
  devise_for :users
root to: "homes#top"
  resources :books, only: [:new, :create, :index, :update, :show, :edit, :destroy]
  resources :users, only: [:index, :edit, :show, :update]
get 'about' => 'homes#about'
  
  

  
end
