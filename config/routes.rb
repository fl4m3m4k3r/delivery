# frozen_string_literal: true

Rails.application.routes.draw do
  root 'organizations#index'

  resources :organizations
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
