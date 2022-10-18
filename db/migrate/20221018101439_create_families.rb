class CreateFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :families do |t|
      t.references :address, null: false, foreign_key: true
      t.timestamps
    end
  end
end
