Rails.application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => "pages#home"

  match '/home',    :to => 'pages#home',       via: 'get'
  match '/about',   :to => 'pages#about',      via: 'get'
  match '/faq',     :to => 'pages#faq',        via: 'get'
  match '/help',    :to => 'pages#help',       via: 'get'
  match '/signup',  :to => 'users#new',        via: 'get'
  match '/signin',  :to => 'sessions#new',     via: 'get'
  match '/signout', :to => 'sessions#destroy', via: 'get'

end
