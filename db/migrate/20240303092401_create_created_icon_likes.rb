class CreateCreatedIconLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :created_icon_likes do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :created_icon_id, null: false, foreign_key: true

      t.timestamps
    end
    add_index :created_icon_likes, [:user_id, :created_icon_id], unique: true
  end
end
