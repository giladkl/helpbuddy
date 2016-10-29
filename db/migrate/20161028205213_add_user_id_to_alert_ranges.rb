class AddUserIdToAlertRanges < ActiveRecord::Migration[5.0]
  def change
	add_column :alert_ranges, :user_id, :integer
  end
end
