Rails.application.routes.draw do
  root to: 'opinions#index'
  resources :users, only: %i[new create edit update]
  resources :opinions, only: [:index, :create, :edit, :update, :destroy] do
  	resources :comments, only: [:create]
  end
  resources :followings, only: [:create, :destroy]
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'users/:username', to: 'users#show', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
