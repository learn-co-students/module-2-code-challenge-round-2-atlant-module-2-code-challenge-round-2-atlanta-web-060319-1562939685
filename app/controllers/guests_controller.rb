class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end 

  def edit
    @guest = Guest.find(params[:id])
  end 

  def show
    @guest = Guest.find(params[:id])
  end 

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      redirect_to guest_path(@guest)
    else 
      render :new
    end 
  end 
end
