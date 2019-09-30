class Flight < ActiveRecord::Base

 # belongs_to : ?
has_many :tickets
has_many :passengers, through: :tickets

    def passengers 
        # active record provides us with all method
        # this will give us back all our passengers
        #self.class.all
        Passengers.all.select do |passenger| #iterrating through each passenger
            passenger.flight_id == self.id
        #call on any attribute we have in scheme
        # comparing it to flight id so we use self
        # every passenger belongs to a flight. checking if flight id
        # is equal to this particular flight instance.
        end
    end


#     # destination = 
#     if from_state.casecmp == California
#         puts "let's go"
#     else
#         puts "Sorry no flights"
#     end
# end

   def destination(from_airport)
     from_airport = sfo
        if from_state.casecmp == California
            puts "let's go"
        else
            puts "Sorry no flights"
        end
    end
    



end