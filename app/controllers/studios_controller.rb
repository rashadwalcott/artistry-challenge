class StudiosController < ApplicationController

  def new
    @studio = Studio.new
    @artists = Artist.all
    @instruments = Instrument.all
  end

  def create

    @studio = Studio.create(studio_params)
    redirect_to artist_path(@studio.artist)
  end

  private

  def studio_params
    params.require(:studio).permit(:artist_id,:instrument_id)
  end
end
