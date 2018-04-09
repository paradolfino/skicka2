class MessagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'web_notifications_channel',
message: '<p>Hello World!</p>'
      puts "Test"
      redirect_to messages_path
    else
      render 'index'
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
    def message_params
      params.require(:message).permit(:content, :created_at)
    end
end
