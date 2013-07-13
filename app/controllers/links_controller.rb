class LinksController < ApplicationController

  def index
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      flash[:notice] = "Link has been created. Yay!"
      redirect_to @link
    else
      # nothing, yet
    end
  end

  def show
    @link = Link.find(params[:id])
  end

end
