# config/routes.rb

Rails.application.routes.draw do
  root "home#index"  # front page

  devise_for :users
  devise_for :admins

  get 'admin/dashboard', to: 'admin#dashboard'
  get 'user/dashboard', to: 'user#dashboard'
  
  resources :tasks
end
