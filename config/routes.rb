X20130316Banc::Application.routes.draw do
  resources :banks, :only => [:index, :new, :create]
  root :to => 'home#index'
end
