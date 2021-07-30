Rails.application.routes.draw do
  get 'hoge', to: 'users#new'
  
  #get 'users/new', to:'users#new'
  #get 'users/new'
  resources :users
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
end
