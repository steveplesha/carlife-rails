class RepairsController < ApplicationController
  include ActionView::Helpers::NumberHelper
    
  before_action :set_repair, only: [:show, :edit, :update, :destroy]
  before_action :get_vehicle

  respond_to :html

  def get_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
    
  def index
    @repairs = @vehicle.repairs.all
    @totalcost = 0
    @repairs.each do |repair|
        @totalcost += repair.cost
    end
    @totalcost = number_to_currency(@totalcost)
    respond_with(@repairs)
  end

  def show
    respond_with(@repair, :location => vehicle_repairs_path(@vehicle))
  end

  def new
    @repair = Repair.new
    respond_with(@vehicle, @repair)
  end

  def edit
  end

  def create
    @repair = @vehicle.repairs.new(repair_params)
    @repair.save
    respond_with(@repair, :location => vehicle_repairs_path(@vehicle))
  end

  def update
    @repair.update(repair_params)
    respond_with(@repair, :location => vehicle_repairs_path(@vehicle))
  end

  def destroy
    @repair.destroy
    respond_with(@repair)
  end

  private
    def set_repair
      @repair = Repair.find(params[:id])
    end

    def repair_params
      params.require(:repair).permit(:vehicle_id, :shop, :cost, :mileage, :work, :date)
    end
end
