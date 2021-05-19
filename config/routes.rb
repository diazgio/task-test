Rails.application.routes.draw do
  resources :commits, only: [:show]
end
