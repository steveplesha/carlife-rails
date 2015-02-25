class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.references :vehicle, index: true
      t.string :shop
      t.decimal :cost
      t.integer :mileage
      t.string :work
      t.date :date

      t.timestamps
    end
  end
end
