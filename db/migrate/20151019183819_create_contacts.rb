class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :user_id
      t.timestamps null: false
    end

    add_index(:contacts, [:email, :user_id], unique: true, name: 'by_user_email')

  end
end
