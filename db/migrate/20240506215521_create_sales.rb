class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.decimal :importe
      t.integer :user_id

      t.timestamps
    end
  end
end
