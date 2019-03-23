Rails.application.routes.draw do

resources :coupon, only: [:index, :new, :create]
