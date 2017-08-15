require_relative '20170511130045_add_styles_to_products'
class RevertAddStyleToProducts < ActiveRecord::Migration[5.0]
  def change
    revert AddStylesToProducts
  end
end
