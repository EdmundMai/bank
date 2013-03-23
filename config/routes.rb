X20130316Banc::Application.routes.draw do
  resources :banks, :only => [:index, :new, :create, :show]
  resources :transactions, :only => [:new, :create]
  root :to => 'home#index'
end
