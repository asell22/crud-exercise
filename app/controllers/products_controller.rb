class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: "Product was successfully created!"
    else
      render:new
    end

  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to products_path, notice: "Product was successfully updated!"
    else
    render:edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "Product was deleted."
  end


  private

  def product_params
    params.require(:product).permit(
    :name,
    :description,
    :price,

    )
  end
end
