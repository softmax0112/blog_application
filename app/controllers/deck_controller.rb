class DeckController < ApplicationController
  def new
    @deck = Deck.new
  end

  def create
    Deck.create(name: post_params[:name], user_id: current_user.id)
    redirect_to "/posts/new"
  end

  def index
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def update
  end


  private
  def post_params
    params.require(:deck).permit(:name)
  end

end
