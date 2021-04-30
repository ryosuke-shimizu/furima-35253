class ItemsController < ApplicationController
  def index
    @items = Item.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :product_name, :user, :category_id, :status_id, :shipp_cost_id, :prefecture_id,
                                 :shipp_date_id, :price, :description, :item_id)
  end
end
