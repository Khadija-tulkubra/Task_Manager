# config/routes.rb

Rails.application.routes.draw do
  root "home#index"  # Front page

  devise_for :users
  devise_for :admins

  # 👉 Custom Devise routes for better control
  devise_scope :admin do
    get 'admin/sign_in', to: 'devise/sessions#new', as: :new_admin_login
    get 'admin/sign_up', to: 'devise/registrations#new', as: :new_admin_register
  end

  devise_scope :user do
    get 'user/sign_in', to: 'devise/sessions#new', as: :new_user_login
    get 'user/sign_up', to: 'devise/registrations#new', as: :new_user_register
  end

  # Dashboard routes
  get 'admin/dashboard', to: 'admin#dashboard'
  get 'user/dashboard', to: 'user#dashboard'

  # Your main resources
  resources :tasks
end

