class ContactsController < ApplicationController
    # def process_form
    #     # Rails.logger.debug "DEBUG: params are #{params}"
    #     flash[:notice] = "Received request from #{params[:contact][:name]}"
        
    #     # params.each do |i|
    #     #     Rails.logger.debug "DEBUG: params element " + i.to_s
    #     # end
    #     redirect_to root_path
    # end
    
    def new
        @contact = Contact.new
        # render 'contacts/new'
    end
    
    def create
        @contact = Contact.new(secure_params)
        if @contact.valid?
            @contact.update_spreadsheet # save data
            # TODO send message
            flash[:notice] = "Message sent from #{@contact.name}."
            redirect_to root_path
        else
            render :new
        end
    end
    
    private
    
    def secure_params
        params.require(:contact).permit(:name, :email, :content)
    end
    
end