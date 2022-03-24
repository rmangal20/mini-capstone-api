class ImagesController < ApplicationController
  def index
    @images = Image.all
    render template: "images/index"
  end

  def show
    @image = Image.find_by(id: params[:id])
    render template: "images/show"
  end

  def update
    image = Image.find_by(id: params[:id])
    image.url = params[:url] || image.url
    image.save
    render json: image.as_json
  end

  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id],
    )
    image.save
    render json: image.as_json
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: {
      message: "Image destroyed successfully",
    }
  end
end
