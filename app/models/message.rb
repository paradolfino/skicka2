class Message < ApplicationRecord
    after_save :broadcast
    
    def broadcast
       ActionCable.server.broadcast 'web_notifications_channel',
message: '<p>Hello World!</p>' 
    end
end
