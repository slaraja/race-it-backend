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
        race = Race.create(race_params)
        if race
            render json: race
        else 
            render json: {error: 'Race was not created.'}
        end 
    end

    def update
        race = Race.find(params:[:id])
        race.update(race_params)
    end

    def destroy
        race = Race.find(params:[id])
        race.destroy
        render json: {message: "#{race.name} was deleted."}
    end

    private

    def race_params
        params.require(:race).permit(:name, :date, :state, :city, :zipcode) 
    end

end
