class AccountsController < ApplicationController

  def new
    @account = Account.new
    respond_with(@account)
  end

  def create
    @account = Account.create(message_params)
    respond_with(@account)
  end

  def show
    @account = Account.find(params[:id])
    respond_with(@account)
  end

  private

  def message_params
    params.require(:account).permit(:balance, :currency, :name, :email)
  end
end
