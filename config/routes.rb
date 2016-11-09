Rails.application.routes.draw do
  resource :users
  root 'users#index'
end
