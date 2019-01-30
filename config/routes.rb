require 'sidekiq/web'

Rails.application.routes.draw do
  resources :kinds
  resources :contacts
  mount Sidekiq::Web => '/sidekiq'
end