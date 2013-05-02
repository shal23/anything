class CreateStatusUpdates < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :status_updates, :user_id
  end
end
