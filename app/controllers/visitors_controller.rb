class VisitorsController < ApplicationController
    # def new
    #     # Rails.logger.debug 'DEBUG: entering VisitorsController#new method' .debug, info , warn , error , or fatal
    #     @owner = Owner.new
    #     # render 'visitors/new' [default behaviour]
    #     # render 'visitors/new', :layout => false [render the view without any application layout]
    #     # render 'visitors/new', :special [render the view with a specific layout, such as administrative pages or landing pages]
        
    #     # flash.now[:notice] = 'Welcome!'
    #     # flash.now[:alert] = 'My birthday is soon.'
    #     # flash[:warning] = 'My birthday is soon.'
        
    # end
    
    rescue_from Exception, :with => :error_render_method

    def new
        @visitor = Visitor.new
    end
    
    def create
        @visitor = Visitor.new(secure_params)
        if @visitor.valid?              # validation check
            @visitor.subscribe
            flash[:notice] = "Signed up #{@visitor.email}."
            redirect_to root_path
        else
            render :new
        end
    end
    
    private
    
    def secure_params
        params.require(:visitor).permit(:email)
    end
    
    private
    
    def error_render_method
        # respond_to do |type|
        #   type.html { render :template => "public/404", :status => 404 }
        #   type.all  { render :nothing => true, :status => 404 }
        # end
        # true
        # http://stackoverflow.com/questions/3694153/catch-all-exceptions-in-a-rails-controller
        render 'public/500.html'
    end
end