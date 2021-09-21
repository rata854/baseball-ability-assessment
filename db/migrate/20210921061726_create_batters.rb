class CreateBatters < ActiveRecord::Migration[5.2]
  def change
    create_table :batters do |t|
      t.integer :hit
      t.integer :at_bat

      t.timestamps
    end
  end
end
