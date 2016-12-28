class WelcomeController < ApplicationController
	
	def index
		@owners = Owner.where(last_checkin: 2.hours.ago..Time.now).order(:last_checkin => :desc)
		@current_owner = Owner.find(session[:owner_id])
		if params[:search]
			@owners = Owner.search(params[:search]).where(last_checkin: 2.hours.ago..Time.now).order(:last_checkin => :desc)
		else
			@owners = Owner.where(last_checkin: 2.hours.ago..Time.now).order(:last_checkin => :desc)
		end
	end

	def checkin_main
		Owner.find(session[:owner_id]).update(last_checkin: Time.now)
		render :json => {status: 'ok'}
	end

	def checkin
		if session[:owner_id]
			Owner.find(session[:owner_id]).update(last_checkin: Date.new )
		end
	end	

	def checkout
		Owner.find(session[:owner_id]).update(last_checkin: nil)
		render :json => {status: 'ok'}
	end	
end
