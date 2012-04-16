class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_or_create_carts

  helper_method :ember_carts, :current_cart
end
