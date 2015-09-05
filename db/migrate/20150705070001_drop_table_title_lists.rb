class DropTableTitleLists < ActiveRecord::Migration
  def change
    drop_table :title_lists
  end
end
