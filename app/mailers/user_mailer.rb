class UserMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"

    def contact_email(contact)
        @contact = contact
        mail(to: ENV["OWNER_EMAIL"], from: @contact.email, :subject => "Website Contact")
    end
    
    # Like the render method in a web page controller, the ActionMailer parent class has a mail
    # method that renders the view.
end
