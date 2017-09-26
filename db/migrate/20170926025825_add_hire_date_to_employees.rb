class AddHireDateToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :hire_date, :datetime
  end
end
