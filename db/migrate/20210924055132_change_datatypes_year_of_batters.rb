class ChangeDatatypesYearOfBatters < ActiveRecord::Migration[5.2]
  def change
    change_column :batters, :year, :date
  end
end
