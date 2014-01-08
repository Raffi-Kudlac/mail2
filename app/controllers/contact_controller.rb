class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    flash.now.alert = "This far"
    @message = Message.new(params[:message])

    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(contact_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end
