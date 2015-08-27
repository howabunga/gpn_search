class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.brand_id = params[:brand_id]
    @product.delivery_id = params[:delivery_id]
    @product.name = params[:name]
    @product.image = params[:image]

    if @product.save
      redirect_to "/products", :notice => "Product created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.brand_id = params[:brand_id]
    @product.delivery_id = params[:delivery_id]
    @product.name = params[:name]
    @product.image = params[:image]

    if @product.save
      redirect_to "/products", :notice => "Product updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to :back, :notice => "Product deleted."
  end
end
