class ManagesController < ApplicationController
  def index
  end

  def send_message
    if params[:message] && params[:account]
      message = Message.find(params[:message][:id])
      account = Account.find(params[:account][:id])
      AccountMailer.notify(message, account).deliver_now
    end
    redirect_to root_path
  end
end
