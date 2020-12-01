Rails.application.routes.draw do
  resources :hair_type_products
  resources :hair_types
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
