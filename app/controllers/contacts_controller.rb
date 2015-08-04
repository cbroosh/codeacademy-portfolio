class ContactsController < ApplicationController
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
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
