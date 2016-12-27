Rails.application.routes.draw do
  devise_for :owners
  get 'welcome/index'

  root 'welcome#index', as: '/'

end
