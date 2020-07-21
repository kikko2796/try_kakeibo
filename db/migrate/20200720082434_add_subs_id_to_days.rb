class AddSubsIdToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :subs_id, :integer
  end
end
