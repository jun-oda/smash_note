class AddContent2ToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :content2, :text
  end
end
