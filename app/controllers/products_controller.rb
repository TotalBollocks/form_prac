class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def edit
    @product = Product.find params[:id]
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_url, notice: 'Product was successfully updated.'
    else
      render "edit"
    end
  end
  
  def edit_multiple
    @products = Product.where(id: params[:product_ids])
  end
  
  def update_multiple
    @products = Product.update(params[:products].keys, params[:products].values)
    @products.reject! { |product| product.errors.empty? }
    if @products.empty?
      redirect_to products_path
    else
      render 'edit_multiple'
    end
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :price, :discontinued, :category_id)
  end
  
  
end
