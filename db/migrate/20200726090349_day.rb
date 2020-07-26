class Day < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
    t.integer :subs_id
    t.date :date
    t.integer :value
    t.string :discription
    end
  end
end
