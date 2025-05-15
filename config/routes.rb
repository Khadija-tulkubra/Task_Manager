Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'tasks#index', as: :authenticated_root
  end

  devise_scope :user do
    root to: 'devise/sessions#new', as: :unauthenticated_root
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  resources :tasks
end
