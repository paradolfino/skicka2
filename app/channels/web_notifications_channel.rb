class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications_channel"
    message = Message.find(params[:id])
    stream_for message
  end

  def unsubscribed
  end
end
