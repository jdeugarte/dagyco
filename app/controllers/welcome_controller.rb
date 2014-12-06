class WelcomeController < ApplicationController
	def index
		
	end

	def compras
		render :index
	end

	def ventas
		render :index
	end

	def news
		render :index
	end
end
