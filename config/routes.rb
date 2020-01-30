Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions' }


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  
  resources :users do
    get 'create_follower', on: :member      
  end
  
  #Routes for Tweet
  resources :tweets
  # root :to => "home#index", 
  # devise_scope :user do
  #   root to: "users/sessions#new" 
  # end
end
