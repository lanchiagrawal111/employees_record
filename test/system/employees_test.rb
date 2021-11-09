require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "", with: @employee.
    fill_in "Address", with: @employee.Address
    fill_in "City", with: @employee.City
    fill_in "Code", with: @employee.Code
    fill_in "Dob", with: @employee.DOB
    fill_in "Email", with: @employee.Email
    fill_in "First", with: @employee.First
    fill_in "Last", with: @employee.Last
    fill_in "Name", with: @employee.Name
    fill_in "Number", with: @employee.Number
    fill_in "Phone", with: @employee.Phone
    fill_in "Postal/zip", with: @employee.Postal/Zip
    fill_in "State", with: @employee.State
    fill_in "Salary", with: @employee.salary
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "", with: @employee.
    fill_in "Address", with: @employee.Address
    fill_in "City", with: @employee.City
    fill_in "Code", with: @employee.Code
    fill_in "Dob", with: @employee.DOB
    fill_in "Email", with: @employee.Email
    fill_in "First", with: @employee.First
    fill_in "Last", with: @employee.Last
    fill_in "Name", with: @employee.Name
    fill_in "Number", with: @employee.Number
    fill_in "Phone", with: @employee.Phone
    fill_in "Postal/zip", with: @employee.Postal/Zip
    fill_in "State", with: @employee.State
    fill_in "Salary", with: @employee.salary
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
