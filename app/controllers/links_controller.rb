class LinksController < ApplicationController

  before_filter :find_link, :only => [:show,
                                      :edit,
                                      :update,
                                      :destroy]

  def index
    @links = Link.all
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
      flash[:alert] = "Link has not been created."
      render :action => "new"
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      flash[:notice] = "Link has been updated."
      redirect_to @link
    else
      flash[:alert] = "Link has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = 'Link has been deleted.'
    redirect_to links_path
  end

  private
    def find_link
      @link = Link.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The link you were looking" +
                      " for could not be found."
      redirect_to links_path
    end
end
