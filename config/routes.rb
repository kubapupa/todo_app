Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'new', to: 'tasks#new'
  post 'new', to: 'tasks#create'
  get 'delete/:id', to: 'tasks#destroy'
end
