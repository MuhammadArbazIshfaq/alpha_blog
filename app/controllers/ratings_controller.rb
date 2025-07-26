class RatingsController < ApplicationController
  before_action :require_user, only: [:create, :destroy]

  def create
    @article = Article.find(params[:article_id])
    @rating = @article.ratings.build(rating_params)
    @rating.user = current_user

    if @rating.save
      redirect_to @article, notice: "Rating was successfully created."
    else
      redirect_to @article, alert: "Error creating rating."
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to @rating.article, notice: "Rating was successfully deleted."
  end

  private

  def rating_params
    params.require(:rating).permit(:score)
  end
end
