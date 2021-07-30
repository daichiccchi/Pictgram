Rails.application.routes.draw do
  get 'sessions/new'
  get 'hoge', to: 'users#new'
  
  #get 'users/new', to:'users#new'
  #get 'users/new'
  resources :users
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
end
