class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.integer :sex, null: false, default: 0
      t.string :type, null: false
      t.references :family, null: false, foreign_key: true
      t.timestamps
    end

    add_index :people, :name
    add_index :people, :sex
    #Ex:- add_index("admin_users", "username")
  end
end
