Rails.application.routes.draw do
  devise_for :users
root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :update, :show, :edit, :destroy]
  resources :users, only: [:index, :edit, :show, :update]

  
 

  
end
