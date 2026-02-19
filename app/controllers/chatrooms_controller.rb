class ChatroomsController < ApplicationController
  def index
    @messages = Message.includes(:user).order(created_at: :asc)
  end



  def show
  end
end
