class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :increment_store_view_counter, only: [:index]
  before_action :set_cart

  def index
 	  @products = Product.order(:title)
  end

  private
  	def increment_store_view_counter
  		@counter = session[:counter].nil? ? session[:counter] = 0 : session[:counter] += 1
  	end
end
