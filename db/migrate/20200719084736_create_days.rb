class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :subs_id
      t.date :date
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
