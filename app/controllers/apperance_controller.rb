class ApperanceController < ApplicationController


    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
          redirect_to appearance_path(@appearance)
        else 
          render :new
    end 
end
