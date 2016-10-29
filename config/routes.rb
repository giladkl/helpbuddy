Rails.application.routes.draw do
  devise_for :users
  root "alert_ranges#index"

  resources :phones do
	  collection do
	  	put 'update_priority_list'
	  end
  end
  resources :alert_ranges do
    collection do
      get 'fire_alerts'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
