Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # READ
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # CREATE
  post 'tasks', to: 'tasks#create'
  #UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
