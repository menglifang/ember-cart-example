class Product < ActiveRecord::Base
  has_ancestry
  acts_as_cartable

  belongs_to :product_category

  attr_accessible :group, :name, :price
end
