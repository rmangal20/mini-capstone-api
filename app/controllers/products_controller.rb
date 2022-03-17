class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.weight = params[:weight] || product.weight
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.save
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      weight: params[:weigh],
      supplier_id: params[:supplier_id],
    )
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {
      message: "Product destroyed successfully",
    }
  end
end
