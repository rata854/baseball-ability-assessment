class ChangeDatatypeTeamOfBatters < ActiveRecord::Migration[5.2]
  def change
    change_column :batters, :team, :string
  end
end
