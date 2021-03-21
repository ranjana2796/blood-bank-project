class Donor < ApplicationRecord
    
    belongs_to :bloodbank


    before_save { email.downcase! }
    
    validates :name, presence: true, length: {maximum: 30}
    validates :bloodgroup, presence: true, length: {maximum: 3}
    validates :dateofbirth, presence: true
    validates :location, presence: true, length: {maximum: 100}
    validates :contact, presence: true, length: {minimum: 10, maximum: 10}
    validates :email, presence: true, length: {maximum: 30}


end
