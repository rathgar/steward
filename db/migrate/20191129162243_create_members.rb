class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.integer :exemption, null: false, default: 0

      t.timestamps
    end
  end
end
