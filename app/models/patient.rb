class Patient < ApplicationRecord


    has_many :appointments through: :appointments

end
