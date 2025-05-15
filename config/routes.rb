Rails.application.routes.draw do
  
  devise_for :users


  

  authenticated :user do
    root to: 'tasks#index', as: :authenticated_root
  end
  
 
  resources :tasks
end
