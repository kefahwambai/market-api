class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :category
end
