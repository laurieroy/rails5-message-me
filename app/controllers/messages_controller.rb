class MessagesController < ActionController
  before_action :require_user
  def show
  end

  def index
    @messages = Message.all
  end
  # Message.create(body: "Godfather.", user: User.find_by(id: 4))
  def create
    @message = Message.new(message_params)
    @message.user = User.first
    if @message.save
      redirect_to @chat
  end

  def destroy
    
  end
end