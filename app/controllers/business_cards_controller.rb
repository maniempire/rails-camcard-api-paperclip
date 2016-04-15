class BusinessCardsController < ApplicationController
  def index
    @business_cards = BusinessCard.order('created_at')
  end

  def upload
  end
  
  def new
      @business_card = BusinessCard.new
    end

    def create
      @business_card = BusinessCard.new(business_card_params)
      if @business_card.save
        flash[:success] = "The photo was added!"
        redirect_to root_path
      else
        render 'new'
      end
    end
    
    def destroy
      @business_card = BusinessCard.find(params[:id])
      @business_card.destroy
      flash[:success] = "The photo was destroyed."
      redirect_to root_path
    end

    private

    def business_card_params
      params.require(:business_card).permit(:image, :title)
    end
end
