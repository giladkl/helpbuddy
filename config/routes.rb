Rails.application.routes.draw do
  devise_for :users
  root "alert_ranges#index"
  resources :alert_ranges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
