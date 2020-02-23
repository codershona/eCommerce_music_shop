Rails.application.routes.draw do

	
  resources :instruments
  devise_for :users, controllers: {

  	registrations: 'registrations'
  	
  }


  root 'instruments#index'
 

 end
