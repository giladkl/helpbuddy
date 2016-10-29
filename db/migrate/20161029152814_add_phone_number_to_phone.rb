class AddPhoneNumberToPhone < ActiveRecord::Migration[5.0]
  def change
  	add_column :phones, :phone_number, :integer
  end
end
