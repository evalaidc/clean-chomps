class TrendsController < ApplicationController
  def index
    @trends = Trend.all
  end

  def new
    @trend = Trend.new
  end

  def create
    @trend = Trend.create(trend_params)
    redirect_to trend_path(@trend)
  end

  def show
    @trend = Trend.find(params[:id])
    @comments = @trend.comments.all
  end

  def edit
    @trend = Trend.find(params[:id])
  end

  def updated
    @trend = Trend.find(params[:id])
    @trend.update(trend_params)
    redirect_to trend_path(@trend)
  end

  def destroy
    @trend = Trend.find(params[:id])
    @trend.destroy
    redirect_to trends_path()
  end

  private
  def trend_params
    params.require(:trend).permit(:title, :description, :photo_url, :ref_link)
  end
end
