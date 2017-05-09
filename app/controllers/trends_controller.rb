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

  end

  def updated

  end


    private
  def trend_params
    params.require(:trend).permit(:title, :description, :photo_url, :ref_link)
  end
end
