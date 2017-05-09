class CommentsController < ApplicationController
  def new
    @trend = Trend.find(params[:trend_id])
    @comment = @trend.comments.new
  end

  def create
    @trend = Trend.find(params[:trend_id])
    @comment = @trend.comments.create(comment_params)
    redirect_to trend_path(@trend)
  end

  def destroy
    @trend = Trend.find(params[:trend_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to trend_path(@trend)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :body, :additional_link)
  end
end
