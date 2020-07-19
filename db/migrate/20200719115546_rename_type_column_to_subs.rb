class RenameTypeColumnToSubs < ActiveRecord::Migration[5.2]
  def change
    rename_column :subs, :type, :kind
  end
end
