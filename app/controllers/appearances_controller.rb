class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
        end
        
        def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
        end
        
        def show
        @appearance = appearance.find(params[:id])
        end
        
        def create
        @appearance = appearance.new(appearance_params)
        if @appearance.save
        redirect_to appearance_path(@appearance)
        else
        render :new
        end
        end
        
        def edit
        @appearance = appearance.find(params[:id])
        @guest = Guest.all
        @episode = Episode.all
        end
        
        def update
        @appearance = appearance.find(params[:id])
        if @appearance.update(appearance_params)
        @appearance.save
        redirect_to appearance_path(@appearance)
        else
        render :edit
        end
        end
        
        
        
        private
        def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
        end
        
        



end 