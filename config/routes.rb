Rails.application.routes.draw do



  devise_for :users
  root to: 'pages#home'


  resources :jobs do
    resources :bookings, only: [:index, :create]
  end


  resources :bookings, only: [:show, :edit, :destroy, :update]

  get '/dashboard', to: 'pages#dashboard'
  get '/home', to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

