class CreatePartySupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :party_supplies do |t|
      t.belongs_to :party
      t.belongs_to :supply
      t.integer :quantity
      t.timestamps
    end
  end
end
