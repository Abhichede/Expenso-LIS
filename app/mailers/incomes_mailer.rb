class IncomesMailer < ApplicationMailer
  default from: 'sales@linkeritsolutions.com'

  def income_added_mail(income, user)
    @income = income
    @user = user

    mail(to: @user.email, subject: 'Income Added')
  end

  def income_edited_mail(income, user)
    @income = income
    @user = user

    mail(to: @user.email, subject: 'Income Modified')
  end

  def income_deleted_mail(income, user)
    @income = income
    @user = user

    mail(to: @user.email, subject: 'Income Deleted')
  end
end
