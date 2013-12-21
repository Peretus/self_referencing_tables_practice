WeightablePractice::Application.routes.draw do
  resources :friendships, except:[:show, :index, :edit, :update]

  resources :weighins

  devise_for :users
  root :to => 'users#index'
end
