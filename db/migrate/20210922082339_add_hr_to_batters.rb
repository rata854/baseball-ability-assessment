class AddHrToBatters < ActiveRecord::Migration[5.2]
  def change
    add_column :batters, :home_run, :integer
    add_column :batters, :double, :integer
    add_column :batters, :triple, :integer
    add_column :batters, :team, :integer
    add_column :batters, :year, :integer
  end
end
