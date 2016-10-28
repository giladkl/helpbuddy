class ChangeMemberIdToUserId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :phones, :member_id, :user_id
  end
end
