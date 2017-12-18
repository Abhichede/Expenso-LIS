json.extract! office_expense, :id, :expense_type, :descrition, :amount, :user_id, :created_at, :updated_at
json.url office_expense_url(office_expense, format: :json)
