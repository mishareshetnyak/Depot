class StoreController < ApplicationController
  def index
    @products = Products.order(:title)
  end
end
