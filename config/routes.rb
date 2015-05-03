Rails.application.routes.draw do
resources :posts
resources :authors

  get '/' => 'posts#index'
  

  post '/login', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

end
