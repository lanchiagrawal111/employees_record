json.extract! employee, :id, :FirstName, :LastName, :Address, :City, :State, :PostalCode, :PhoneNumber, :Email, :DOB, :salary, :created_at, :updated_at
json.url employee_url(employee, format: :json)
