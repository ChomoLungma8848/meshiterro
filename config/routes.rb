Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get "homes/about" => "homes#about", as: 'about'
  devise_for :users
  root to: "homes#top"
end
