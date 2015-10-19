class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.integer :group_id
      t.integer :contact_id
      t.timestamps null: false
    end

    add_index :groupings, :group_id
    add_index :groupings, :contact_id
    add_index :groupings, [:group_id, :contact_id], unique: true
  end
end
