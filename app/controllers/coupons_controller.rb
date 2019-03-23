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
    @coupon = Coupon.create(coupons_code: params[:coupon][:coupons_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
  end
end
