Rails.application.routes.draw do
  resources :posts
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # You can have the root of your site routed with "root"
    # just remember to delete public/index.html.
    # ↓下記を追記
 root :to => 'home#index'

 post '/posts/:id/like' => 'posts#like', as: 'like_post'
 resources :posts do
  resources :comments
 end


end
