class CouponsController < ApplicationController
  
  def index
    @coupon = Coupons.all
  end
  
  def new
  end
  
  def create
    @coupon = Coupon.create(:coupon_code params[:coupon_code],)
  
end
end