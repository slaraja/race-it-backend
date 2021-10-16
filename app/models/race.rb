class Race < ApplicationRecord

    def self.get_data
        response = HTTParty.get("https://www.runreg.com/api/search")
        races = response["MatchingEvents"]
            
        races.each do |race|
        self.create(name: race["EventName"], date: race["EventDate"], city: race["EventCity"], state: race["EventState"], zipcode: race["EventZip"])
        # self.create(name: race["EventName"], date: race["EventDate"], state: race["EventState"],)
        end
    end

end
