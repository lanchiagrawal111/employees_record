class CreatePurses < ActiveRecord::Migration[5.2]
  def change
    create_table :purses do |t|
      t.references :employee, foreign_key: true
      t.integer :funds

      t.timestamps
    end
  end
end
