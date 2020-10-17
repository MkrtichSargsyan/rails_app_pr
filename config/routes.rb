Rails.application.routes.draw do

  resources :posts
  # get 'posts', to: 'posts#index'

  root to: 'posts#index'
end

