class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Address
      t.string :City
      t.string :State
      t.integer :PostalCode
      t.integer :PhoneNumber
      t.string :Email
      t.date :DOB
      t.float :salary
      t.timestamps
    end
  end
end
