class ArticlesController < ApplicationController

  def index
    #@articles = Article.all
    render json: Article.all, status: :ok
  end

end