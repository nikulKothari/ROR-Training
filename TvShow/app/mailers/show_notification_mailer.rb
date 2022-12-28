class ShowNotificationMailer < ApplicationMailer
    # rails automatically call relavent view for this method from views dirctory 
    def notification(show, user)
    @show = show
    @user = user
    mail(to: @user.email, subject: 'Show reminder')
    end
end
