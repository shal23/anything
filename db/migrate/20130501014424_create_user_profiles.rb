class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.text :about
      t.text :hobbies
      t.string :github
      t.string :facebook
     

      t.timestamps
    end
    add_index :user_profiles, :user_id
  end
end
