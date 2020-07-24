class CreateSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :subs do |t|
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end
