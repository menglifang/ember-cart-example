EmberCartExample::Application.routes.draw do
  mount EmberCart::Engine => "ember_cart", as: :ember_cart

  root :to => 'product_categories#index'

  resources :product_categories do
    resources :products
  end
end
