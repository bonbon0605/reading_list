class ChangeListBooks < ActiveRecord::Migration
  def change
    change_table :list_books do |t|
      t.rename :title_list_idi, :title_list_id
    end
  end
end
