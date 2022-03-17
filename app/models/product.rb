class Product < ApplicationRecord
  def supplier
    supplier = Supplier.find_by(id: supplier_id)
    return supplier.show
  end

  def images
    images = Image.where(product_id: id)
    list = []
    for image in images
      hash = { image_id: image.id, image_url: image.url }
      list << hash
    end
    return list
  end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax()
  end
end
