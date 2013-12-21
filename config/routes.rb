WeightablePractice::Application.routes.draw do
  resources :friendships

  resources :weighins

  devise_for :users
  root :to => 'users#index'
end
