class CreateAlertRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :alert_ranges do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status
      t.integer :interval

      t.timestamps
    end
  end
end
