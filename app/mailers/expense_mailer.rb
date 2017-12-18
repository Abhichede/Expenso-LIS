class ExpenseMailer < ApplicationMailer
  default from: 'sales@linkeritsolutions.com'

  def  welcome_mail(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def expense_added_mail(expense, user)
    @expense = expense
    @user = user

    mail(to: @user.email, subject: 'Expense Added')
  end

  def expense_edited_mail(expense, user)
    @expense = expense
    @user = user
    mail(to: @user.email, subject: 'Expense edited')
  end

  def expense_deleted_mail(expense, user)
    @expense = expense
    @user = user

    mail(to: @user.email, subject: 'Expense deleted')
  end
end
