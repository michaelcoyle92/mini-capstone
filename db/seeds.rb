# seeds file
# seed dump gem
# rails console
# rails models
# model methods
# rails routes
# CRUD
# REST
# migrations
# params



# decomposition
# debugging
# discovery
# deliberate practice

# how to fill in the supplier_id

products = Product.where(supplier_id: nil)

products.each do |product|
  product.supplier_id = rand(1..2)
  product.save
end
