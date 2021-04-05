class ArticlesController < ApplicationController

  def index
    articles = Article.recent
    render json: serializer.new(articles), status: :ok
  end

  def show
    article = Article.find(params[:id])
    render json: serializer.new(article)
  end

  def serializer
    ArticleSerializer
  end

end