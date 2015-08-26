class MarkettermsController < ApplicationController
  def index
    @marketterms = Marketterm.all
  end

  def show
    @marketterm = Marketterm.find(params[:id])
  end

  def new
    @marketterm = Marketterm.new
  end

  def create
    @marketterm = Marketterm.new
    @marketterm.flavor_id = params[:flavor_id]
    @marketterm.product_id = params[:product_id]
    @marketterm.name = params[:name]

    if @marketterm.save
      redirect_to "/marketterms", :notice => "Marketterm created successfully."
    else
      render 'new'
    end
  end

  def edit
    @marketterm = Marketterm.find(params[:id])
  end

  def update
    @marketterm = Marketterm.find(params[:id])

    @marketterm.flavor_id = params[:flavor_id]
    @marketterm.product_id = params[:product_id]
    @marketterm.name = params[:name]

    if @marketterm.save
      redirect_to :back, :notice => "Marketterm updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @marketterm = Marketterm.find(params[:id])

    @marketterm.destroy

    redirect_to "/marketterms", :notice => "Marketterm deleted."
  end
end
