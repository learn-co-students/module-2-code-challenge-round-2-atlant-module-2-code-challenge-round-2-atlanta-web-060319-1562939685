class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

    
    def show
    @guest = Guest.find(params[:id])
    end
    
    def new
    @guest = Guest.new
    end
    
    def create
    @guest = Guest.new(guest_params)
    if @guest.save
    redirect_to guest_path(@guest)
    else
    redirect_to new_guest_path
    end
    end
    
    
    
    private
    
    def guest_params
    params.require(:guest).permit(:name, :super_name, :power_id)
    
    
    end







end
