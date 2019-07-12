class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end 

  def edit
    @episode = Episode.find(params[:id])
  end 

  def show
    @episode = Episode.find(params[:id])
  end 

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to episode_path(@episode)
    else 
      render :new
    end 
  end 
end
