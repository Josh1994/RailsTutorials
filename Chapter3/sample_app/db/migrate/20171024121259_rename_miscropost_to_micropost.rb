class RenameMiscropostToMicropost < ActiveRecord::Migration[5.1]
  def change
    rename_table :miscroposts, :microposts
  end
end
