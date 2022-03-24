class Product < ApplicationRecord
  has_many :category_products
  validates :name,  presence: true 
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: {in: 10...500}

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
   price < 10
  end
  

  def tax
   price * 0.09
  end

  def total
    price + tax
  end

end