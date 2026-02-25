class Message < ApplicationRecord
  belongs_to :user

  after_create_commit :broadcast_message

  private

  def broadcast_message
    ActionCable.server.broadcast("chatroom_channel", {
      body: body,
      user: user.username
    })
  end
end
