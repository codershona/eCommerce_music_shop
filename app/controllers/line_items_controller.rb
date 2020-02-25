class LineItemsController < ApplicationController

  include CurrentCart

  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]


  def index
    @line_items = LineItem.all
  end

 
  def show
  end

 
  def new
    @line_item = LineItem.new
  end


  def edit
  end


  def create
    instrument = Instrument.find(params[:instrument_id])
    # @line_item = LineItem.new(line_item_params)

    # @line_item = @cart.add_instrument(line_item_params)
    @line_item = @cart.add_instrument(instrument)

    respond_to do |format|
      if @line_item.save
        # format.html { redirect_to @line_item, notice: 'Line item was successfully created.' }

  format.html { redirect_to @line_item.cart, notice: 'Item added to cart' }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end



   def destroy
    @cart = Cart.find(session[:cart_id])
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    def line_item_params
      params.require(:line_item).permit(:instrument_id)
    end
end
