class Product < ActiveRecord::Base
  has_ancestry

  belongs_to :product_category
  attr_accessible :group, :name, :price, :quantity
end
