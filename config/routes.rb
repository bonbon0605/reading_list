Rails.application.routes.draw do
  resource :login, :only => [:show]
  resources :title_lists

  root to: 'title_lists#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy',as: :logout
end
