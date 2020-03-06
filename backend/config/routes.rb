Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :paths, only: [:index, :create, :show, :update]
  resources :towns, only: [:index, :create]
end
