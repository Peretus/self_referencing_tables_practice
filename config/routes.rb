WeightablePractice::Application.routes.draw do
  resources :weighins

  devise_for :users
  root :to => 'users#index'
end
