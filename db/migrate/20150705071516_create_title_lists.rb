class CreateTitleLists < ActiveRecord::Migration
  def change
    create_table :title_lists do |t|
      t.integer :user_id, null: false
      t.string :list_name, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
