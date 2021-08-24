class AddContent1ToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :content1, :text
  end
end
