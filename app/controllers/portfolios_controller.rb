class PortfoliosController < ApplicationController
	
	def index
		@portfolio_items = Portfolio.all
	end
	def new
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
			
			respond_to do |format|
				if @portfolio_item.save
				format.html { redirect_to portfolios_path, notice: 'Portfolio created successfully.'}
					else
						format.html {render :new}
				end
			end
	end

	def show
		
	end
	def update
		
	end
end
