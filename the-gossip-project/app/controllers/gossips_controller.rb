class GossipsController < ApplicationController
  def new
    @gossips = Gossip.new
    puts @gossips
  end

  def create
    @gossips = Gossip.create(titre: params[:titre],content: params[:content])
  end

  def edit
        @gossips = Gossip.find(params[:id])
  end

  def update
      @gossips = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:titre, :content)
      @gossips.update(gossip_params)
      redirect_to gossips_path
    end

  def destroy
    @gossips = Gossip.find(params[:id])
    puts params
    @gossips.destroy
    redirect_to(gossips_path)
  end

  def index
    @gossips = Gossip.all
  end

  def show
    @gossips = Gossip.find(params[:id])
  end
end
