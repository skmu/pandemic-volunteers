Rails.application.routes.draw do
  root 'home#index'

  post '/', to: 'volunteers#create' # POST /#apply for the volunteer form on the root

  resources :cities, only: :index
  resources :partners, only: [:index, :create]
  resources :states, only: :index

  namespace :api do
    post '/hospital', to: 'hospitals#create'
  end

  get '/hospitals', to: 'hospitals#index'
end
