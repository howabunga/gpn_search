class FlavorsController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
    @product = Product.new

  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.new
    @flavor.name = params[:name]

    if @flavor.save
      redirect_to "/flavors", :notice => "Flavor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end

  def update
    @flavor = Flavor.find(params[:id])

    @flavor.name = params[:name]

    if @flavor.save
      redirect_to "/flavors", :notice => "Flavor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @flavor = Flavor.find(params[:id])

    @flavor.destroy

    redirect_to :back, :notice => "Flavor deleted."
  end
end
