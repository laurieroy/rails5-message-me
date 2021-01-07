class MessagesController <  ApplicationController
  before_action :require_user
  
  def index
    @message = Message.new
    @messages = Message.all
  end

  def show
  end

  def create
    message = current_user.messages.build(message_params)
    if message.save
      redirect_to root_path
    end
  end

  def destroy
  
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end
end