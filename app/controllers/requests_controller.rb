class RequestsController < ApplicationController
  def new
    @request = CatRentalRequest.new
    render :new
  end

  def create
    @request = CatRentalRequest.new(request_params)
    if @request.save
      redirect_to cat_url(@request.cat)
    else
      flash.now[:errors] = @request.errors.full_messages
      render :new
    end
  end

  def index
    @requests = CatRentalRequest.all
    render :index
  end

  # def edit
  #   @cat = Cat.find(params[:id])
  #   render :edit
  # end
  #
  # def update
  #   @cat = Cat.find(params[:id])
  #   if @cat.update(cat_params)
  #     redirect_to cat_url(@cat)
  #   else
  #     flash.now[:errors] = @cat.errors.full_messages
  #     render :edit
  #   end
  # end

  private

  def request_params
    params.require(:request).permit(:cat_id, :start_date, :end_date)
  end
end
