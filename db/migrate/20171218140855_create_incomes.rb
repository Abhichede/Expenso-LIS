class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.string :from
      t.string :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
