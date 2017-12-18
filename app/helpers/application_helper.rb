module ApplicationHelper

  def get_total_oe
    total = 0.0
    OfficeExpense.all.each do |expense|
      total += expense.amount.to_f
    end

    return total
  end

  def get_total_i
    total = 0.0
    Income.all.each do |expense|
      total += expense.amount.to_f
    end

    return total
  end

end
