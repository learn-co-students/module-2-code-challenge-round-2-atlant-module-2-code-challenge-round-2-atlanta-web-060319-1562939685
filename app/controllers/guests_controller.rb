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
    @guest = Guest.create(guest_params)
      if @guest.save
        redirect_to guest_path(@guest)
      else
        render :new
      end
    end

  def edit

  end

  def update
  
  end

  private
    
  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end
end
