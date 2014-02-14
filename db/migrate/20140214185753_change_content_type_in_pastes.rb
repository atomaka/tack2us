class ChangeContentTypeInPastes < ActiveRecord::Migration
  def self.up
    change_column :pastes, :content, :text
  end

  def self.down
    change_column :pastes, :content, :string
  end
end
