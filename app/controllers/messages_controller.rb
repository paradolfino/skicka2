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
