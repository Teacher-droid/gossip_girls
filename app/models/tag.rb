class Tag < ApplicationRecord

    has_many :taggers
    has_many :gossips, through: :taggers


end
