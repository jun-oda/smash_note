class AddContent4ToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :content4, :text
  end
end
