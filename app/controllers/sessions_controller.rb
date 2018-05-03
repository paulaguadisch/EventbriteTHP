class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(id: params[:session][:user_id].to_i)
  	if user
  		log_in user
  		redirect_to user
  	else
  		flash.now[:danger] = 'Invalid user id dude...'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end