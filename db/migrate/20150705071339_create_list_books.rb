class CreateListBooks < ActiveRecord::Migration
  def change
    create_table :list_books do |t|
      t.integer :title_list_idi, null: false
      t.string :asin, null: false
      t.string :reading_status, null:false

      t.timestamps
    end
  end
end
