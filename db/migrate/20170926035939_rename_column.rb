class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :employees, :list_id, :division_id
  end
end
