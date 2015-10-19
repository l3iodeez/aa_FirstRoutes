class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end

    add_index :groups, :user_id
    add_index :groups, :contact_id
    add_index :groups, [:user_id, :contact_id], unique: true
  end
end
