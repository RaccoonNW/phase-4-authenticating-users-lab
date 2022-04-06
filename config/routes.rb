Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # routes for login/logout in Session
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # route for showing user in User
  get "/me", to: "users#show"
end
