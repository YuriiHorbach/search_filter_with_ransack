class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :last_4
      t.decimal :amount

      t.timestamps
    end
  end
end
