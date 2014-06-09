class StartupsController < ApplicationController

	before_action :set_startup, only: [ :show, :edit, :update, :destroy ]

	def show
		@startup = Startup.all.find(params[:id])
	end

	def startups
		Startup.all
	end

	private

	def set_startup
		@startup = Startup.all.find(params[:id])
	end

end
