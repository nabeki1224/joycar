Rails.application.routes.draw do
  resources :cars, only: [:create, :destroy, :index]

  get "up" => "rails/health#show", as: :rails_health_check
end
