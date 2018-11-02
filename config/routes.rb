Rails.application.routes.draw do
  root to: 'users#home'
  resources :gossips
  get 'users/home', to: 'users#home'
   get 'users/login', to: 'users#login'
   post 'users/login', to: 'users#check'
   get 'users/deco', to: 'users#deco'
   get 'users/deconnection', to: 'users#deconnection'
    get 'users/new', to: 'users#new'
   post 'users/create', to: 'users#create'
   get 'users/profil', to: 'users#profil'
    get 'users/index', to: 'users#index'
  end
