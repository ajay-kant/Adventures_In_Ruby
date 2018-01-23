class ShopperController < ApplicationController 
	include CurrentCart
	before_action :set_cart
	skip_before_action :authorize

  def index
  	if params[:search]
     search_str = "%"+params[:search]+"%"
     res1 = Product.where("name like ?", search_str).order(:name)
     res2 = Product.where("description like ?", search_str).order(:description)
     res3 = Product.where("price like ?", search_str).order(:price)
     searchresult = res1 + res2 + res3
     @products = searchresult.uniq
   else
     @products = Product.order(:name)
		end
	end
end
