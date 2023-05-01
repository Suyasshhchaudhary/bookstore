class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.decimal :percentage_off, precision: 5, scale: 2
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
