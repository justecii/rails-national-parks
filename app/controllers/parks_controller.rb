class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def create
    Park.create(park_params)
    redirect_to parks_path
  end

  def new
    @park - Park.new
  end

  def show
    @park = Park.find(params[:id])
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    @park = Park.find(params[:id])
    p.update(park_params)
    redirect_to parks_path
  end

  def destroy
    Park.find(params[:id])
    redirect_to park_path
  end
  def edit_park_path(park)
    park_path(park) + "/edit"
  end

  private 

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
