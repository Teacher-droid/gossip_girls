class Like < ApplicationRecord

  #  validates :user_id 
   #,uniqueness: {scope:gossip_id}
   belongs_to :user
   belongs_to :gossip

end
