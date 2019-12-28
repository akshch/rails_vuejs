Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "app", to: "user#index"
  #get "users", to: "users#index"
  resources :users
  root to: 'welcome#index'
end
