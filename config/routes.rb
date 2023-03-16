Rails.application.routes.draw do
  resources :learning_resources
  root 'home#index'
end
