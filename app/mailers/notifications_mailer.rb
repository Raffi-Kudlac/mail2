class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@youdomain.dev"
  default :to => "raffi.kudlac@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => message.subject, :to => message.to)
  end

end