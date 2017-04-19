Rails.application.routes.draw do
  # get 'reviews/show'
  #
  # get 'reviews/create'
  #
  # get 'reviews/destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
