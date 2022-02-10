class Appointment < ApplicationRecord

    belongs_to :medic
    belongs_to :patient 

end
