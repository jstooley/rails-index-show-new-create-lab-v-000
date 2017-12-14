class CouponController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
  end

  def create
    Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
  end

end
