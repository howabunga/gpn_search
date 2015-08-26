class CreateMarketterms < ActiveRecord::Migration
  def change
    create_table :marketterms do |t|
      t.integer :flavor_id
      t.integer :product_id
      t.string :name

      t.timestamps

    end
  end
end
