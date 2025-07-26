class CommentsController < ApplicationController
  before_action :require_user, only: [:create, :destroy]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @article, notice: "Comment was successfully created."
    else
      redirect_to @article, alert: "Error creating comment."
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.article, notice: "Comment was successfully deleted."
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
