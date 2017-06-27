class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.integer :user_id, null: false
      t.integer :post_id

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :post_id

  end
end
