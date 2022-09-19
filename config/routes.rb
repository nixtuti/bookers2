Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  
  get 'users/:id' => 'books#new'
  post 'users/:id' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
