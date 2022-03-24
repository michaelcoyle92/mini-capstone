class Category < ApplicationRecord
  has_many :category_products

  def
    category_product = CategoryProduct.all
  end
end
