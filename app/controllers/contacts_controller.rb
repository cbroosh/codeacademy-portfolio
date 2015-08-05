class ContactsController < ApplicationController
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = 'Message sent.'
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comments]
            
            ContactMailer.contact_email(name, email, body).deliver
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirect_to new_contact_path, notice: "Something went wrong."
        end
        
        
    end
    
    def new
        @contact = Contact.new
    end
    
    private
        def contact_params
           params.require(:contact).permit(:name, :email, :comments) 
        end
end
