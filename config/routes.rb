Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  # Define route for the dashboard
  get 'dashboard', to: 'dashboard#index', as: :dashboard

  # Define root route (home page)
  root 'home#index'
end
