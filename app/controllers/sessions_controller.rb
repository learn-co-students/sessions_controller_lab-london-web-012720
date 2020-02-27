class SessionsController < ApplicationController
    def new
    end

    def create
        # byebug
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
        else 
            redirect_to login_path           
        end
        

    end
    
    def destroy
        session.delete :name if session[:name]
    end
end