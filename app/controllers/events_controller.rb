class EventsController < ApplicationController
  def new
  	@user = User.find_by(id: session[:user_id])
  	@event = Event.new
  end

  def create
  	@user = User.find_by(id: session[:user_id])
  	@event = Event.new(event_params)
  	@event.creator_id = @user.id
    @event.save
    redirect_to @user
  end

  private

  def event_params
    params.require(:event).permit(:description,:date,:place)
  end

end