class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:comments)
  end
end
