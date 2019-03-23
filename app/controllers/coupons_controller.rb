class CouponsController < ApplicationController
  
  def index
    @coupon = Coupons.all
  end
  
  def new
  end
  
  def create
    @coupon = Coupon.create(
      coupon_code: params[:coupon][:coupon_code], 
      store: params[:coupon][:store])
    @coupon.save
  end
end
  
end
