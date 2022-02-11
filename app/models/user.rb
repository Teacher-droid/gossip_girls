class User < ApplicationRecord

    has_many :likes, dependent: :destroy
    #probleme seed
   belongs_to :city,optional: true
   has_many :gossips 
   belongs_to :city, optional: true
   has_many :sent_messages, foreign_key: 'sender', class_name: "PrivateMessage"
   has_many :received_messages, foreign_key: 'recipient', class_name: "PrivateMessage"
   validates :password, 
   presence: true, 
   length: { minimum: 1 }
  
   has_secure_password



end
