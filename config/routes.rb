Rails.application.routes.draw do
  devise_for :users
  get '/users/sign_out' => 'devise/sessions#destroy'
  

  resources :bloodbanks
  get 'aboutus/index'
  get 'contactus/index'

  get 'search', to: 'search#index'
  get 'search/resuts', to: 'search#results'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  resources :home
  resources :donor
  resources :contactus
  resources :bloodbank
  resources :search

end