class Employee < ApplicationRecord
    before_save {self.email = email.downcase}
    has_one :purse
    has_one :payment_history, through: :purse
    
    validates :FirstName, :LastName, :Address, :City, :State, :PostalCode, :salary,  presence: true
    validates :FirstName, :LastName, length: { minimum: 2 }
    validates :salary, :PostalCode, numericality: true
    VALID_PHONE_REGEX = /\+?\d[\d -]{8,12}\d/
    validates :PhoneNumber, presence: true, uniqueness: true, numericality: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
    validates :email, presence: true, length: { maximum: 105 },            
                        uniqueness: { case_sensitive: false },            
                        format: { with: VALID_EMAIL_REGEX }

    before_save :merge_address
   

    def merge_address
        self.Address = self.Address + " , " + self.City + " , " + self.State + " , " + self.PostalCode.to_s
    end
end
