class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_parms)
    @list.save
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_parms
    params.require(:list).permit(:name, :photo)
  end
end
