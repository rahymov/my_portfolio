class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	include DeviseWhitelist  
	include SetSource
	include CurrentUserConcern

	include DefaultPageContent

	before_action :set_copyright	

	def set_copyright
		@copyright = RahymovViewTool::Renderer.copyright 'Ya Rahymov' ,'All rights reserved'
	end
	
	module RahymovViewTool
	 class Renderer
		def self.copyright name,msg
			"&copy; #{Time.now.year} | <b>#{name}</br> #{msg}".html_safe
		end
	end
end
end