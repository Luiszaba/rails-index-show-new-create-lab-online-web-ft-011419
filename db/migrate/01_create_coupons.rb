class CreateCoupons < ActiveRecord::Migration
  
  def change
    create_table :coupons do |t|
      t.string :coupons_code
  
end