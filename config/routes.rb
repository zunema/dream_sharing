Rails.application.routes.draw do

  root to: 'homes#top'

  get 'homes/about'

  resources :users

  get 'dreams/top'
  resources :dreams, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
