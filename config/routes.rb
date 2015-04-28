Rails.application.routes.draw do
resources :posts
resources :authors

  get '/' => "posts#index"
end
