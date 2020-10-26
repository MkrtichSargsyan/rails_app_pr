Rails.application.routes.draw do

  resources :hosts
  resources :posts

  root to: 'posts#index'
end

