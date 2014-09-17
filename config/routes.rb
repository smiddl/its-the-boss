Rails.application.routes.draw do
  resources :users

  get 'welcome/index'

  root 'welcome#index'

  resources :contacts, :clients, :users
end
