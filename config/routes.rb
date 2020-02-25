Rails.application.routes.draw do

	
  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: {

  	registrations: 'registrations'
  	
  }


  root 'instruments#index'
 

 end
