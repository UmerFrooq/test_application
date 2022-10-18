class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :address_line, null: false

      t.timestamps
    end
  end
end
