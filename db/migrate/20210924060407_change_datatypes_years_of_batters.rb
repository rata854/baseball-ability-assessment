class ChangeDatatypesYearsOfBatters < ActiveRecord::Migration[5.2]
  def change
    change_column :batters, :year, :integer
  end
end
