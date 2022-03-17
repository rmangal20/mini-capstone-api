class Supplier < ApplicationRecord
  def product
    products = Product.where(supplier_id: id)
    list = []
    for product in products
      list << { product.name => product.price }
    end
    return list
  end

  def show
    data = {
      id: id,
      name: name,
      email: email,
      phone_number: phone_number,
    }
    return data
  end
end
