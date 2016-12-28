Rails.application.routes.draw do
  devise_for :owners
  get 'welcome/index'

  root 'welcome#index', as: '/'

  get '/owners/new'		=> 'devise/registrations#new', as: 'sign_up'
  post '/owners'		=> 'devise/registrations#create'
end
