Rails.application.routes.draw do
  resources :admins
  resources :pages
  devise_for :users
  
  root 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
