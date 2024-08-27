Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles # all RESTful routes
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] # mostra todas as rotas, mesmo que linha de cima # all RESTful routes
  resources :categories, except: [:destroy]
end
