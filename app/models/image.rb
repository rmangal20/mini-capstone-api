class Image < ApplicationRecord
  def product
    product = Product.find_by(id: product_id)
    return product.name
  end
end
