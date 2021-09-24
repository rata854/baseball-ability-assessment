class ChangeDatatypesTeamOfBatters < ActiveRecord::Migration[5.2]
  def change
    change_column :batters, :team, :integer
  end
end
