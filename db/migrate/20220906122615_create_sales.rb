class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.string :sale
      t.string :sale2

      t.timestamps
    end
  end
end
