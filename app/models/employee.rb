class Employee < ApplicationRecord
    has_one :purse
    has_one :payment_history, through: :purse
    
    validates :FirstName, :LastName, :Address, :City, :State, :PostalCode, :PhoneNumber, :salary, :Email,  presence: true
    validates :FirstName, :LastName, length: { minimum: 2 }
    validates :salary, :PhoneNumber, :PostalCode, numericality: true
    validates :PhoneNumber,:Email, uniqueness: true

    before_save :merge_address
   

    def merge_address
        self.Address = self.Address + " , " + self.City + " , " + self.State + " , " + self.PostalCode.to_s
    end
end
