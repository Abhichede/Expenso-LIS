require 'test_helper'

class OfficeExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office_expense = office_expenses(:one)
  end

  test "should get index" do
    get office_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_office_expense_url
    assert_response :success
  end

  test "should create office_expense" do
    assert_difference('OfficeExpense.count') do
      post office_expenses_url, params: { office_expense: { amount: @office_expense.amount, descrition: @office_expense.descrition, expense_type: @office_expense.expense_type, user_id: @office_expense.user_id } }
    end

    assert_redirected_to office_expense_url(OfficeExpense.last)
  end

  test "should show office_expense" do
    get office_expense_url(@office_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_office_expense_url(@office_expense)
    assert_response :success
  end

  test "should update office_expense" do
    patch office_expense_url(@office_expense), params: { office_expense: { amount: @office_expense.amount, descrition: @office_expense.descrition, expense_type: @office_expense.expense_type, user_id: @office_expense.user_id } }
    assert_redirected_to office_expense_url(@office_expense)
  end

  test "should destroy office_expense" do
    assert_difference('OfficeExpense.count', -1) do
      delete office_expense_url(@office_expense)
    end

    assert_redirected_to office_expenses_url
  end
end
