class CreateOfficeExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :office_expenses do |t|
      t.string :expense_type
      t.string :description
      t.string :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
