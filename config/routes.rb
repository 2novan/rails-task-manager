Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: "tasks"  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Create
  get "/tasks/new", to: "tasks#new", as: "new_task" #Afficher le form
  post "/tasks", to: "tasks#create", as: "create" #Creer une nouvelle task
  #Show
  get "/tasks/:id", to: "tasks#show", as: "task" #Affiche les tasks
  #Update
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit" #affiche le form de modif
  patch "/tasks/:id", to: "tasks#update" #On patch les modif
  #Delete
  delete "tasks/:id", to: "tasks#destroy", as: "delete"
  # resources :tasks
end