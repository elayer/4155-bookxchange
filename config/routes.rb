Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'users/new'
  
  get 'static_pages/help'
  get 'users/new'
  get 'landing/index'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'
  post '/signup',  to: 'users#create'
  
  root 'landing#index'
  
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  

  resources :reviews
  
  resources :users
  
  resources :books


end
