class Bloodbank < ApplicationRecord

    has_many :donors

    before_save { availability.upcase! }
    
    validates :name, presence: true, length: {maximum: 100}
    validates :address, presence: true, length: {maximum: 200}
    validates :category, presence: true
    validates :availability, presence: true, length: {maximum: 100}
   

end

