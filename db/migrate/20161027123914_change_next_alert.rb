class ChangeNextAlert < ActiveRecord::Migration[5.0]
  def change
  	rename_column :alert_ranges, :next_alert, :last_alert
  end
end
