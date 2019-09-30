class Ticket < ActiveRecord::Base #join table

    belongs_to :passenger
    belongs_to :flight
    
    def price
        # if flight = domestic
    end









end