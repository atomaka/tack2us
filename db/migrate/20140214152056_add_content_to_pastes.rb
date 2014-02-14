class AddContentToPastes < ActiveRecord::Migration
  def change
    add_column :pastes, :content, :string
  end
end
