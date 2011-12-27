ChefMeg::Application.routes.draw do

  #frontend
  root :to => "home#index"
  resources :recipes, :only => :show

  #devise
  if Rails.env == 'production'
    devise_for :users, :path => '/admin', :controllers => { :registrations => "registrations" } 
  else
    devise_for :users, :path => '/admin'
  end

  #admin
  namespace :admin do
    root :to => "recipes#index"
    resources :recipes
    resources :users
  end

end
