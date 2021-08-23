class CreateUserNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_notes do |t|
      t.integer :user_id
      t.integer :character_id
      t.text :content1
      t.text :content2
      t.text :content3
      t.text :content4

      t.timestamps
    end
  end
end
