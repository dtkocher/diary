class EntryController < ApplicationController
  respond_to :json

  def index
    respond_with Entry.all
  end

  def show
  end

  def create
    respond_with Entry.create(params[:entry].merge(date: Date.today))
  end

  def update
    respond_with Entry.update(params[:id], params[:entry].except(:date))
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end
end
