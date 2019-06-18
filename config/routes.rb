Rails.application.routes.draw do
  resources :dependentes
  resources :funcionarios

  root to: "funcionarios#index"
end
