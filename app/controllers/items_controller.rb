class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  #def new
    #@item = Item.new
  #end

  def create
    Item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:image, :product_name, :user, :category_id, :status_id, :shipp_cost_id, :prefecture_id, :shipp_date_id, :price, :description)
  end
end
