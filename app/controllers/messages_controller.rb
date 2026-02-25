class MessagesController < ApplicationController
  before_action :require_user

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      # Do nothing here
      # Broadcasting happens automatically in Message model
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
