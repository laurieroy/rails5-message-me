class ChatroomController < ApplicationController
  def index
    @chat = Message.all
  end
end
