ChefMeg::Application.routes.draw do

  #frontend
  root :to => "home#index"
  resources :recipes, :only => :show
  devise_for :users
  resources :users, :only => :show

  #admin
  namespace :admin do
    root :to => "dashboard#index"
    resources :recipes
  end

end
