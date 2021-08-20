class CreateUserNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_notes do |t|
      t.integer :user_id
      t.string :name
      t.string :content1
      t.string :content2
      t.string :content3
      t.string :content4

      t.timestamps
    end
  end
end
