Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  get 'pages/edit_note'
  root 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
