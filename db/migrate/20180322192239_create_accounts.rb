class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :customer_id
      t.integer :bank_id
      t.float :balance 
      t.timestamps
    end
  end
end
