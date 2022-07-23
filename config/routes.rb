Rails.application.routes.draw do
  root "posts#index"
  #get "/posts", to: "posts#index"
  #get "posts/new", to: "posts#new"
  #post "/posts", to: "posts#create"
  #get "posts/:id", to: "posts#show"
  #get "posts/:id/edit", to: "posts#edit"
  #patch "post/:id", to: "posts#update"
  resources :posts
end
