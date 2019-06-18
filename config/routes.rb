Rails.application.routes.draw do
  resources :funcionarios

  root to: "funcionarios#index"
end
