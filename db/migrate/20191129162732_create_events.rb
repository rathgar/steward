class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end
