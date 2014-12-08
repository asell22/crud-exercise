class AddTimestampsToProductsAgain < ActiveRecord::Migration
  def change
    add_timestamps(:products)
  end
end
