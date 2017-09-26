class CreateDivisions < ActiveRecord::Migration[5.1]
  def change
    create_table(:divisions) do |t|
      t.column(:division_name, :string)

      t.timestamps()
  end

  add_column(:employees, :list_id, :integer)
  end
end
