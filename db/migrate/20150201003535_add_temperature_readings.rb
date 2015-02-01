class AddTemperatureReadings < ActiveRecord::Migration
  def change
    create_table :temperature_readings do |t|
      t.string :station_name
      t.integer :station_id
      t.datetime :time
      t.float :reading

      t.timestamps
    end
  end
end
