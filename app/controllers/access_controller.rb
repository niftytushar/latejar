class AccessController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login,:logout]
  
  def index
  end

  def login
  end

  def attempt_login
  	if params[:email].present? && params[:password].present?
  		found_user = User.where(:email => params[:email]).first
  		if found_user 
  			authorized_user = found_user.authenticate(params[:password])
  		end
  	end
  	if authorized_user
  		session[:user_id] = authorized_user.id
  		session[:first_name] = authorized_user.first_name
  		flash[:notice] = "You are Logged in"
  		redirect_to(:controller=>'teams',:action=> 'index') 
  	else 
  		flash[:notice] = "Invalid username password combination"
  		redirect_to(:action => "login")
  	end
  end
  
  def logout
  	flash[:notice] = "Logged Out"
	session[:user_id] = nil
	session[:first_name] = nil	
  	redirect_to(:action => "login")
  end 

end
