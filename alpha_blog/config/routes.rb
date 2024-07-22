Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about' #get request to pages controller, about action
#  get "up" => "rails/health#show", as: :rails_health_check

end
