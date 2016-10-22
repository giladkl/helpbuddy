class AddNextAlert < ActiveRecord::Migration[5.0]
  def change
	add_column :alert_ranges, :next_alert, :datetime
  end
end
