Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  get 'posts/show'
  post '/create', to: 'posts#create'
  delete "/posts/:id", to:"posts#destroy"
  get "/posts/:id/edit", to: "posts#edit"
  get 'tweets' => 'tweets#index'

  root to: "posts#index"
  get "/new", to:"posts#new"
  patch "/posts/:id", to:"posts#update"

  get   'users/:id'   =>  'users#show'

end
