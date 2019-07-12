class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.save
            redirect_to episode_path(@appearance.episode_id)
        else
            render :new
        end
    end

    def edit

    end

    def update

    end

    private
    
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :episode_rating)
    end
end
