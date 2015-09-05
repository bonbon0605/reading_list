class DropTableComicTitles < ActiveRecord::Migration
  def change
    drop_table :comic_titles
  end
end
