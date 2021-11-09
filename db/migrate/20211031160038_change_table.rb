class ChangeTable < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :Emp_Code , :string
  end
end
