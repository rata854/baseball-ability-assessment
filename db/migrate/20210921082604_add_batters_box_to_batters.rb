class AddBattersBoxToBatters < ActiveRecord::Migration[5.2]
  def change
    add_column :batters, :batters_box, :integer
  end
end
