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
  
  def discontinue
    Product.where(id: params[:product_ids]).update_all(discontinued: true)
    redirect_to products_path
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :price, :discontinued, :category_id)
  end
  
  
end
