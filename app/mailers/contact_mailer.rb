class ContactMailer < ActionMailer::Base

   default to: 'c.p.brucher@gmail.com'
   
   def contact_email(name, email, body)
       @name = name,
       @email = email,
       @body = body,
       mail(from: email, subject: "New comment on Dev Match")
   end

end