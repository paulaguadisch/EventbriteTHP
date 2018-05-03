Rails.application.routes.draw do

root 'sessions#new'
get    '/signup',  to: 'users#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'
resources :users

resources :events

end