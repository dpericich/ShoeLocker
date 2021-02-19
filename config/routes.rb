Rails.application.routes.draw do
  root "products#index"

  get "mens_shoes", to: "products#mens_shoes"
  get "female_shoes", to: "products#female_shoes"
  
  resources :products do
    resources :ratings
  end
end
