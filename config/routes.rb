# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :pictures
  root 'animes#index'

  resources :animes do
    resources :comments
  end
end
