class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :total
  has_one :product
  has_one :category
end
