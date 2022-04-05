Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'

  devise_for :users
  root to: 'homes#top'
  get "/homeabours/about" => "homes#about" , as: "about"
  resources :post_images, only: [:new, :index, :show]
  resources :users, only: [:show, :edit]
end
