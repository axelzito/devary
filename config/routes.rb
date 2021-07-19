Rails.application.routes.draw do
  get 'home/index'

  resources :daily_entries
  devise_for :users

  root to: 'daily_entries#new'

  resources :daily_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
