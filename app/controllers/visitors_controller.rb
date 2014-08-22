class VisitorsController < ApplicationController
    def new
        # Rails.logger.debug 'DEBUG: entering VisitorsController#new method' .debug, info , warn , error , or fatal
        @owner = Owner.new
        # render 'visitors/new' [default behaviour]
        # render 'visitors/new', :layout => false [render the view without any application layout]
        # render 'visitors/new', :special [render the view with a specific layout, such as administrative pages or landing pages]
        
        # flash.now[:notice] = 'Welcome!'
        # flash.now[:alert] = 'My birthday is soon.'
        # flash[:warning] = 'My birthday is soon.'
        
    end
end