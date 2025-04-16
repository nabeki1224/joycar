class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def index
    @car = Car.new
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to cars_path
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to cars_path
  end

  private
  def car_params
    params.require(:car).permit(:name, :year)
  end
end
