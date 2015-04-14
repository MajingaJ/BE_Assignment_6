Rails.application.routes.draw do
resources :posts, only: [:index, :show]

  get '/' => "posts#index"
end
