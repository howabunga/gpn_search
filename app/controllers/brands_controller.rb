class BrandsController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    @product =Product.new
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new
    @brand.name = params[:name]

    if @brand.save
      redirect_to "/brands", :notice => "Brand created successfully."
    else
      render 'new'
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])

    @brand.name = params[:name]

    if @brand.save
      redirect_to "/brands", :notice => "Brand updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])

    @brand.destroy

    redirect_to :back, :notice => "Brand deleted."
  end
end
