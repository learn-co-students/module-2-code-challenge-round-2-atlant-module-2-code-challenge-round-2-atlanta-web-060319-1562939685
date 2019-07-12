class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new
  end
  
  def create
    @episode = Episode.create(episode_params)
    if @episode.save
      redirect_to episode_path(@episode)
    else
      render :new
    end
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    
  end

  private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end
end
