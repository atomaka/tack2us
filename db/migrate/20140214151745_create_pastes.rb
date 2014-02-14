class CreatePastes < ActiveRecord::Migration
  def change
    create_table :pastes do |t|

      t.timestamps
    end
  end
end
