
  Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  get 'topics/new'
  devise_for :users
  get 'pages/index'
  get '/portfolio', to: 'articles#index'
  get '/contact', to: 'pages#contact'
  get '/blog', to: 'pages#blog'
  get '/about', to: 'pages#about'

  get "login" => "users#login_form"

  resources :articles
  resources :users
  resources :topics
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
