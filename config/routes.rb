EmberCartExample::Application.routes.draw do
  root :to => 'product_categories#index'

  resources :product_categories do
    resources :products
  end
end
