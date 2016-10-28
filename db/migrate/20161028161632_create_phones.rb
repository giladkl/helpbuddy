class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :member_id
      t.integer :role
      t.integer :hierarchy_location

      t.timestamps
    end
  end
end
