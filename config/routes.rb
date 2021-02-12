Rails.application.routes.draw do
  root "products#index"
  
  resources :products do
    resources :ratings
  end
end
