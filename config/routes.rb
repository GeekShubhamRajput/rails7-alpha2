Rails.application.routes.draw do

  resources :courses, only: [:create, :index]

  root to: "courses#index"  
end
