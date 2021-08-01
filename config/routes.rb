Rails.application.routes.draw do
 
  
  
  #get 'users/new', to:'users#new'
  #get 'users/new'
  
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  
  resources :users
  resources :topics
end
