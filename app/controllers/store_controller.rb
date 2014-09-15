class StoreController < ApplicationController
  before_action :increment_store_view_counter, only: [:index]
  def index
 	@products = Product.order(:title)
  end

  private
  	def increment_store_view_counter
  		@counter = session[:counter].nil? ? session[:counter] = 0 : session[:counter] += 1
  	end
end
