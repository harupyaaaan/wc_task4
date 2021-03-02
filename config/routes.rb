Rails.application.routes.draw do
  root 'homes#top'

  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]



  get 'home/about' => 'homes#about'
  resources :books

end