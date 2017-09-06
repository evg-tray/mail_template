class MessagesController < ApplicationController

  def new
    @message = Message.new
    respond_with(@message)
  end

  def create
    @message = Message.create(message_params)
    respond_with(@message)
  end

  def show
    @message = Message.find(params[:id])
    respond_with(@message)
  end

  private

  def message_params
    params.require(:message).permit(:title, :text)
  end
end
