class RacesController < ApplicationController

    def index
        races = Race.all
        #instance var not needed because we're not rendering in views
        render json: races
    end

    def show
        race = Race.find(params[:id])
        render json: race
    end

    def create
        race = Race.new(race_params)
        render json: race
    end

    def destroy
        race = Race.find(params:[id])
        race.destroy
        render json: {message: "#{race.name} was deleted."}
    end


end
