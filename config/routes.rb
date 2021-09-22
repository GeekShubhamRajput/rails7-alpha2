Rails.application.routes.draw do

  resources :courses, only: [:create, :index, :show]

  root to: "courses#index"  
end
