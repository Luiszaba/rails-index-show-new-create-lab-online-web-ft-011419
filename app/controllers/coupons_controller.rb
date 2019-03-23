class CouponsController < ApplicationController
  
  def index
    @coupon = Coupon.all
  end
  
  def show
    Coupon.find(params[:id])
  end
  
  def new
  end
  
  def create
    @coupon = Coupon.create!(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupons_path(@coupon)
  end
end
