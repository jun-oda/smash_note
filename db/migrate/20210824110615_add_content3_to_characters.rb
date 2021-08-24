class AddContent3ToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :content3, :text
  end
end
