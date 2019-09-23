Rails.application.routes.draw do
  resources :deck
  # get 'deck/new'
  # get 'deck/create', to: "deck/create"
  # get 'deck/index'
  # get 'deck/destroy'
  # get 'deck/show'
  # get 'deck/edit'
  # get 'deck/update'
  get "/" => "home#top"
  get "about" => "home#about"
  # get 'home/top'
  get "/posts/test", to: "posts#test"
  get "/posts/search", to: "posts#search"
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

  get "/posts/:id/rankup", to: "posts#rankup"
  get "/posts/:id/rankdown", to: "posts#rankdown"

  get   'users/:id'   =>  'users#show'
  

  resources :posts do
    post :confirm, action: :confirm_new, on: :new
    post :import, on: :collection
  end

end
