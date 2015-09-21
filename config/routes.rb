Rails.application.routes.draw do


  resources :planets do
  	root to: 'planets#index'

  end
end