class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :group
  has_many :children
end
